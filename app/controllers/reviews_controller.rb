class ReviewsController < ApplicationController
  def new
    @pro = User.find(params[:id])
    @review = Review.new
    authorize @review

  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    authorize @review

    if @review.save
      redirect_to pro_path(params[:id])
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
