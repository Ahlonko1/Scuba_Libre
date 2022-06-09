class ProsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  skip_after_action :verify_authorized

  def index
    if params[:query].present?
      @pros = User.global_search("%#{params[:query]}%")
    else
      @pros = User.pro
    end
    @markers = @pros.geocoded.map do |pro|
      {
        lat: pro.latitude,
        lng: pro.longitude
      }
    end
    if params[:language].present?
      @pros = User.pro.where("? = ANY (languages)", params[:language])
    end
  end

  def show
    @pro = User.find(params[:id])
    @offers = @pro.offers
    if params[:category].present?
      @offers = @offers.where(category: params[:category])
    end
    if params[:level].present?
      @offers = @offers.where(level: params[:level])
    end
    if params[:query].present?
      @offers = @offers.where("price < ?", params[:query])
    end
    @booking = Booking.new
  end

end
