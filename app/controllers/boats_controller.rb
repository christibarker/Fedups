class BoatsController < ApplicationController
    def index
    @boats = Boat.all
    @job_all = Job.all
    @boat = Boat.new
  end

  def new
    @boat = Boat.new
  end

  def create
    @user = current_user
    @boat = @user.boats.create(boat_params)
    # redirect_to 
  end

  def show
    @user = current_user
    @boats = Boat.all
    @boat = Boat.find(params[:id])
  end

  def edit
     @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
    redirect_to boats_path
  end

  def destroy
    @user = current_user
    @boat = Boat.find(params[:id]).destroy
    redirect_to boats_path
  end

 private

  def boat_params
    params.require(:boat).permit(:name, :location, :max_capacity, :avatar)
  end

end
