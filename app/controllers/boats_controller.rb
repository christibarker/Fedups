class BoatsController < ApplicationController
  # before_action :authenticate, only: [:new, :create, :edit, :update, :destroy]
  def index
    @boats = Boat.all
    @job_all = Job.all
    @boat = Boat.new
    @boat_job = BoatJob.new
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat_job = BoatJob.new
    @boats = Boat.all
    @job_all = Job.all
    respond_to do |format|
    @boat = current_user.boats.create(boat_params)
    format.js
    format.html{redirect_to boats_path}
    end
  end

  def show
    @boat_job = BoatJob.new
    @boats = Boat.all
    @boat = Boat.find(params[:id])
  end

  def edit
     @boat = Boat.find(params[:id])
  end

  def update
    @job_all = Job.all
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
    redirect_to boats_path
  end

  def destroy
    respond_to do |format|
      @boat = Boat.find(params[:id]).destroy
      format.js
      format.html{redirect_to boats_path}
    end
  end

 private

  def boat_params
    params.require(:boat).permit(:name, :location, :max_capacity, :avatar, :id)
  end

end
