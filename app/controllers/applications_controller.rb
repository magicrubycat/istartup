class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :update, :destroy]

  def index
    @applications = Application.where(user_id: current_user.id)
  end

  def show; end

  def create
    @application = Application.new(application_params)
    @application.user = current_user
    @application.content = @application.content
    redirect_to application_path(@application) if @application.save
  end

  def update
    @application.update(application_params)
  end

  def destroy
    @applcation.destroy
  end

  private

  def set_application
    @application = Application.find(params[:id])
  end

  def application_params
    params.require(:application).permit(:startup_id, :user_id, :sent, :document)
  end
end
