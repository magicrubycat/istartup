class FavoritesController < ApplicationController
  before_action :set_user, only: :update

  def update
    raise
    if @user.update(user_params)
      redirect_to request.referrer, notice: "saved"
    end
  end

  def destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:startup_id)
  end

  def favorite_params
    params.require(:favorite).permit(:startup_id)
  end
end
