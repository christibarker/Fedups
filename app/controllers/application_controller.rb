class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except => [:index, :show]
  before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name])
  end

  helper_method :current_user, :user_signed_in_?, :authenticate

  def authenticate
  	if !session[:user_id]
  	redirect_to new_session_path
  	end
  end

  def current_user
    # session[:user_id] = nil
  	if user_signed_in_?
  		User.find(session[:user_id])
  	end
  end

  def user_signed_in_?
    # session[:user_id] = nil
  	!session[:user_id].nil?
  end
end
