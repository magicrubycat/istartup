class StartupsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @startups = Startup.all
  end

  def show
    @startup = Startup.find(params[:id])
    @favorite = Favorite.new
    @application = Application.new
  end
end
