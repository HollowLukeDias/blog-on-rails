class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "You signed up succesfully!"
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update

  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

end