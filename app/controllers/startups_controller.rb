class StartupsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

# GET /startups
  def index
    @startups = Startup.all
    if params[:sector_id]
      @startups = @startups.select { |startup| startup.sector_ids.include?(params[:sector_id].to_i) }
    end
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
