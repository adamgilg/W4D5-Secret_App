class SecretsController < ApplicationController
  def new
    @secret = Secret.new(params[:secret])
  end

  def create
    @secret = Secret.new(params[:secret])
    @secret.user_id = @current_user.id
    @secret.save
    redirect_to secrets_path
  end

  def index
    @secrets = Secret.where("user_id = #{current_user.id}")
  end

end