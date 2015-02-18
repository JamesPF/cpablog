class UsersController < ApplicationController

  skip_before_filter :authorize, only: [:new, :create]

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
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to posts_path
    else
      render 'edit'
    end
    @user.save
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
