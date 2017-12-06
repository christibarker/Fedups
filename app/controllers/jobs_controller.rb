class JobsController < ApplicationController
  # before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]
 
 def index
    @boats = Boat.all
    @job_all = Job.all
    @job = Job.new
    @boat_job = BoatJob.new
  end

  def new
    @job = Job.new
  end

  def create
    @boat_job = BoatJob.new
    @boats = Boat.all
    @job_all = Job.all
    respond_to do |format|
    @job = current_user.jobs.create(job_params)
    format.js
    format.html{redirect_to jobs_path}
    end
  end

  def show
    @boat_job = BoatJob.new
    @job_all = Job.all
    @job = Job.find(params[:id])
  end

  def edit
     @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update!(job_params)
    redirect_to jobs_path 
  end

  def destroy
    respond_to do |format|
      @job = Job.find(params[:id]).destroy
      format.js
      format.html{redirect_to jobs_path}
    end
  end

 private

  def job_params
    params.require(:job).permit(:name, :cost, :description, :orgin, :destination, :avatar, :id, :containers_needed)
  end
end
