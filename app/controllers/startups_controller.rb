class StartupsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

# GET /startups
  def index
    @startups = Startup.all
    @startups = Startup.geocoded # returns startups with coordinates

    @markers = @startups.map do |startup|
      {
        lat: startup.latitude,
        lng: startup.longitude
      }
    end
  end

  def show
    @startup = Startup.find(params[:id])
  end
end
