class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :current_user

  def current_user
    if session[:session_token]
      p @current_user
      @current_user = User.find_by_session_token(session[:session_token])
    else
      redirect_to new_sessions_path
    end
  end


end
