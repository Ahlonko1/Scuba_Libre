class OffersController < ApplicationController

  def index
  end

  def show
    authorize @offer
  end

  def new
    @offer = Offer.new
    authorize @offer # Add this line
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    authorize @offer # Add this line
  end



end
