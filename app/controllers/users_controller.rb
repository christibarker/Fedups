class UsersController < ApplicationController
  
  def index
  end

  def show
  	@job_all = Job.all
  	@boats = Boat.all
  end
  
end
