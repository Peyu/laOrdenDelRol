class ApplicationController < ActionController::Base
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :logged_in?, :current_user
  
  protected
    def logged_in?
      session[:usuario_id] # nil is false 
    end

    def current_user
      @current_user ||= Usuario.find(session[:usuario_id])
      
    end
      
end
