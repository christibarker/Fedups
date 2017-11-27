class BoatJobsController < ApplicationController
  
	def new
		@boat_job = BoatJob.new
	end


  def create
  	respond_to do |format|
	  	@boat = Boat.find(params[:local_boats][:boat_id])
	  	@job = Job.find(params[:boat_job][:job_id])
	  	@boat.jobs << @job
	  	format.js
		end	
  end
end
