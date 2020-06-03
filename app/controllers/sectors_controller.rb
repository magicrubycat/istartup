class SectorsController < ApplicationController
  def index
    @sectors = Sector.all
    @user = current_user
  end
end
