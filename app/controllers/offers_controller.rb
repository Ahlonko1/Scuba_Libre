class OffersController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_offer, only: %i[show edit update destroy]

  def show
    authorize @offer
    @booking = Booking.new
    authorize @booking
  end

  def new
    @offer = Offer.new
    @user = current_user
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    authorize @offer
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @offer.update(offer_params)
    redirect offer_path(@offer)
  end

  def destroy
    @offer.destroy
    redirect_to root_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def offer_params
    params.require(:offer).permit(:name, :category, :duration, :unit_duration, :price, :currency, :level, :briefing,
                                  photos: [])
  end
end
