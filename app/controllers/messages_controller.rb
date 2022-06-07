class MessagesController < ApplicationController

  def index
    @bookings_owner = current_user.booking_requested
    @bookings_user = current_user.bookings
    @all_bookings = []
    @all_bookings.concat(@bookings_owner)
    @all_bookings.concat(@bookings_user)
    @last_messages = []
    @all_bookings.each do |b|
      @last_messages << b.messages.last if b.messages.last
    end

  end

  def create
    @booking = Booking.find(params[:booking_id])
    @message = Message.new(message_params)
    authorize @booking
    authorize @message
    @message.booking = @booking
    @message.user = current_user
    @message.read = false
    if @message.save
      redirect_to booking_path(@booking)
    else
      render "booking/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
