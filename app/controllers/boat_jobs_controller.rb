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
		  @boat_job = BoatJob.where(boat_id: params[:boat_id]).where(job_id: params[:job_id]).first
	  	format.js
	  end
  end
 
end
