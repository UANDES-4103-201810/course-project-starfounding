class UsersController < ApplicationController
  def profile
  end
  def admin
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
end
