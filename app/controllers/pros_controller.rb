class ProsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  skip_after_action :verify_authorized

  def index
    @pros = User.pro
    @markers = @pros.geocoded.map do |pro|
      {
        lat: pro.latitude,
        lng: pro.longitude
      }
    end
  end

  def show
    @pro = User.find(params[:id])
    @offers = @pro.offers
  end
end
