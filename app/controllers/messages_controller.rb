class MessagesController < ApplicationController

  def index
    @bookings_owner = current_user.booking_requested
    @bookings_user = current_user.bookings
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @message = Message.new(message_params)
    authorize @booking
    authorize @message
    @message.booking = @booking
    @message.user = current_user
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
