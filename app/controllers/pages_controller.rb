class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @bookings_owner = current_user.booking_requested
    @bookings_user = current_user.bookings

    # Calendar
    start_date = params.fetch(:start_date, Date.today).to_date

    # For a monthly view:
    @bookings = Booking.where(start_at: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)

    # Offers by user
    @offers = current_user.offers
  end
end
