class SectorsController < ApplicationController
  def index
    @sectors = Sector.all
    @user = current_user
  end

  # for the sector selection on the Interests Page
  def new
    @sector = Sector.new
  end

  def create
  end
end
