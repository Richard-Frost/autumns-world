class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  
  def auth 
  	if !logged_in?
  	 redirect_to login_path
  	end
  end

  def logged_in?
    session[:user_id]
  end
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id] 
  end

  def admin?
  	current_user.admin == true
  end
 

  helper_method :current_user, :admin
end
