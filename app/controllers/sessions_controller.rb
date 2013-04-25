class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.where(email: params[:email]).first
    render status: 403 and return unless @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect_to root_path
  end
end
