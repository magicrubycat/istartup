class StartupsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

# GET /startups
  def index
    @startups = Startup.all
  end

  def show
    @startup = Startup.find(params[:id])
    @favorite = Favorite.new
    @application = Application.new
    
    @markers = [
      {
        lat: @startup.latitude,
        lng: @startup.longitude
      }]
  end
end
