class UsersController < ApplicationController
  def profile
  end
  def admin
    @users = User.all
    @categories = Category.all
  end
  def show
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(params.require(:user).permit(:isAdmin))
        format.html { redirect_to users_admin_url, notice: 'User updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_admin_url, notice: 'User account successfully cancelled.' }
      format.json { head :no_content }
    end
  end
end
