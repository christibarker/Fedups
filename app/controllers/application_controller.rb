class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except => [:index, :show]
  before_action :configure_permitted_parameters, if: :devise_controller?


end