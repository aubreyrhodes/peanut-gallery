class SessionsController < ApplicationController
  skip_before_filter :authenticate!

  def new
  end

  def create
    @user = User.where(email: params[:email]).first

    unless @user.present? && @user.authenticate(params[:password])
      render action: :new, status: 403 and return
    end

    session[:user_id] = @user.id
    redirect_to root_path
  end
end
