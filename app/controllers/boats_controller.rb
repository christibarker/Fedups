class BoatsController < ApplicationController
    def index
    @boat = Boat.all
    @job = Job.all
  end

  def new
    @boat.new
  end

  def create
    @user = current_user
    @boat = @user.boat.create(boat_params)
    redirect_to 
  end

  def show
    @user = current_user
    @boat_all = Boat.all
    @boat = Boat.find(params[:id])
  end

  def edit
     @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(post_params)
    redirect_to current_user 
  end

  def destroy
    @user = current_user
    @boat = Boat.find(params[:id]).destroy
    redirect_to @user
  end

 private

  def boat_params
    params.require(:boat).permit(:name, :location, :location)
  end

end
