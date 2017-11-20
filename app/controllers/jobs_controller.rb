class JobsController < ApplicationController
 def index
    @boat = Boat.all
    @job = Job.all
  end

  def new
    @Job.new
  end

  def create
    @user = current_usejob = @user.job.create(project_params)
    redirect_to 
  end

  def show
    @user = current_user
    @job = Job.all
    @job = Job.find(params[:id])
  end

  def edit
     @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(project_params)
    redirect_to current_user 
  end

  def destroy
    @user = current_user
    @job = Job.find(params[:id]).destroy
    redirect_to @user
  end

 private

  def project_params
    params.require(:job).permit(:name, :cost, :description, :orgin, :destination)
  end
end
