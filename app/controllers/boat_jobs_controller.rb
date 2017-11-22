class BoatJobsController < ApplicationController
  
	def new
		@boat_job = BoatJob.new
	end


  def create
  	@boat = Boat.find(params[:boat_job][:boat_id])
  	@job = Job.find(params[:local_jobs][:job_id])
  	@boat.jobs << @job
  	redirect_to boats_path
  end
end
