class ProsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pros = User.pro
  end

  def show
    @pro = User.find(params[:id])
  end

end
