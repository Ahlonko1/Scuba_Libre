class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.offer_id = params[:offer_id]
    @booking.status = "pending"
    authorize @booking
    if @booking.save
      redirect_to dashboard_path
    else
      render pro_path(@booking.offer.user), status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at)
  end

end
