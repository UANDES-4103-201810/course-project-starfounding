class UserProjectWishlistsController < ApplicationController
  def show
    @user_project_wishlists = UserProjectWishlist.all
  end

  def index

  end

  def new
    @user_project_wishlist = UserProjectWishlist.new
    @project= Project.find(params[:project_id])
  end

  def create
    @user_project_wishlist=UserProjectWishlist.new(wishlist_params)
    @index= users_profile_path
    respond_to do |format|
      if @user_project_wishlist.save
        format.html { redirect_to @index, notice: 'Promise was successfully earned.' }
        format.json { render :index, status: :created, location: @promise }

      else
        format.html { render :new }
        format.json { render json: @promise.errors, status: :unprocessable_entity }
      end
    end
  end

  def wishlist_params
    params.permit(:project, :user)
  end
end
