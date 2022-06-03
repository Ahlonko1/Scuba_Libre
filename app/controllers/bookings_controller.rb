class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

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

  def accepted
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "accepted"
    @booking.save
    redirect_to dashboard_path
  end

  def denied
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "denied"
    @booking.save
    redirect_to dashboard_path
  end

  def cancelled
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.status = "cancelled"
    @booking.save
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at)
  end

end
