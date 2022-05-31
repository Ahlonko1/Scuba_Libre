class ProsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  skip_after_action :verify_authorized

  def index
    @pros = User.pro
  end

  def show
    @pro = User.find(params[:id])
  end
end
