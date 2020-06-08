class ApplicationsController < ApplicationController
  before_action :set_application, only: [:show, :edit, :update, :destroy]

  def index
    @applications = Application.where(user_id: current_user.id)
  end

  def show
    p @application
  end

  def create
    @application = Application.new(application_params)
    @application.user = current_user
    @application.content = @application.content
    redirect_to application_path(@application) if @application.save
  end

  def edit; end

  def update
    if @application.update(application_params)
      redirect_to application_path(@application)
    else
      render :edit
    end
  end

  def destroy
    @applcation.destroy
  end

  def generate_pdf
    grover = Grover.new(_application_content.html.erb, format: 'A4')
    @pdf = grover.to_pdf
  end

  private

  def set_application
    @application = Application.find(params[:id])
  end

  def application_params
    params.require(:application).permit(:id, :startup_id, :user_id, :sent, :document, :content)
  end
end
