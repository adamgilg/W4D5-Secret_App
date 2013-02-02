class UsersController < ApplicationController
  before_filter :current_user, :except => [:new, :create]

  def create
    @user = User.new(params[:user])
    if @user.save
      UserMailer.welcome_email(@user).deliver
      redirect_to secrets_path
    else
      render 'new'
    end
  end

  def new
    @user = User.new(params[:user])
  end

  def index

  end

end
