class StartupsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

# GET /startups
  def index
    # we are checking two conditions: if the user is signed in and if the current user has any interests
    if user_signed_in? && current_user.user_sectors.any?
      @startups = Startup.joins(:startup_sectors).where(startup_sectors: {sector_id: current_user.sectors.pluck(:id)})
       #it's taking from the user the sectors, just the id, and for each id is checking for the startup's matches
    elsif params[:search].present?
      @startups = Startup.search_by_all_attributes("%#{params[:search][:query]}%")
    else
      @startups = Startup.all
      # @startups = @startups.select { |startup| startup.sector_ids.include?(params[:sector_id].to_i) }
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
