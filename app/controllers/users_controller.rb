class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    if @user.password = @user.password_confirmation
      @user.save!
    else
      flash.notice "Password doesn't match.  Try again, yo."
    end
    redirect_to root_url
  end

  def new
    @user = User.new(params[:user])
  end

  def index

  end
end
