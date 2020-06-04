class FavoritesController < ApplicationController
  def index
    @startups = Startup.geocoded # returns startups with coordinates

    @markers = @startups.map do |startup|
      {
        lat: startup.latitude,
        lng: startup.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { startup: startup })
        # image_url: helpers.asset_url('lewagon-logo-square')
      }
    end
  end

  def create
  end

  def destroy
  end
end
