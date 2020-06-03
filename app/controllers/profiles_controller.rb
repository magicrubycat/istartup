class ProfilesController < ApplicationController
  before_action :set_user, only: :update

  def update
    redirect_to startups_path if @user.update(user_params)
  end

  def dashboard
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(sector_ids: [])
  end
end
