class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:email, :password, :password_confirmation))
    @user.save
    session[:user_id] = @user.id
    id = User.last[:id]
    redirect_to posts_path
  end

  def edit
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
