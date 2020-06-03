class FavoritesController < ApplicationController
  before_action :set_favorite, only: :destroy

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.user = current_user
    if @favorite.save
      redirect_to startup_path(@favorite.startup)
    else
      redirect_to request.referrer
    end
  end

  def destroy
    @favorite.destroy

    redirect_to startup_path(@favorite.startup)
  end

  private

  # def set_user
  #   @user = User.find(params[:id])
  # end

  def set_favorite
    @favorite = Favorite.find(params[:id])
  end

  def favorite_params
    params.require(:favorite).permit(:startup_id)
  end
end
