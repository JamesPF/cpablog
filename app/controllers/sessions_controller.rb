class SessionsController < ApplicationController

  skip_before_filter :authorize, only: [:new, :create]

  def new
  end

  def create
    user = User.where(email: params[:email]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to posts_path
    else
      render "new"
    end
  end

  def destroy
    reset_session
    redirect_to login_path
  end

end
