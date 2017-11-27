class BoatJobsController < ApplicationController
  
	def new
		@boat_job = BoatJob.new
	end


  def create
  	respond_to do |format|
	  	@boat = Boat.find(params[:boat_job][:boat_id])
	  	@job = Job.find(params[:boat_job][:job_id])
	  	@boat.jobs << @job
	  	format.js
		end	
  end

  def destroy
  	respond_to do |format|
		  @boat_jobs = Boat.find(params[:boat_job][:boat_id])
		  # @job_boats = Job.find(params[:boat_job][:job_id])
	  	format.js
	  end
  end
end
