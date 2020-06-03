class StartupsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @startups = Startup.all
    @user = current_user
  end

  def show
    @startup = Startup.find(params[:id])
    @user = current_user
  end
end
