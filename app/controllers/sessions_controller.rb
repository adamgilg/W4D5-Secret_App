class SessionsController < ApplicationController
  before_filter :current_user, :except => [:new, :create]

  def create
    @user = User.find_by_name(params[:name])
    if @user && @user.authenticate(params[:password])
      @user.update_attribute(:session_token, SecureRandom.base64)
      session[:session_token] = @user.session_token
      redirect_to root_url
    else
      flash.notice = "Invalid Login"
      render new_sessions_path
    end
  end

  def new
  end

  def destroy
    session[:session_token] = nil
    redirect_to new_sessions_path
  end
end
