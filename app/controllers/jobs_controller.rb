class JobsController < ApplicationController
 def index
    @boats = Boat.all
    @job_all = Job.all
    @job = Job.new
  end

  def new
    @job = Job.new
  end

  def create
    @user = current_user
    @job = @user.jobs.create(job_params)
    # redirect_to 
  end

  def show
    @user = current_user
    @job_all = Job.all
    @job = Job.find(params[:id])
  end

  def edit
     @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    redirect_to jobs_path 
  end

  def destroy
    @user = current_user
    @job = Job.find(params[:id]).destroy
    redirect_to jobs_path
  end

 private

  def job_params
    params.require(:job).permit(:name, :cost, :description, :orgin, :destination, :avatar)
  end
end
