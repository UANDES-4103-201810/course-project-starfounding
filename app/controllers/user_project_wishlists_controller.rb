class UserProjectWishlistsController < ApplicationController
  def show

  end

  def index
    @user_project_wishlists = UserProjectWishlist.all
  end

  def new
    @user_project_wishlist = UserProjectWishlist.new
  end

  def create
    @user_project_wishlist=UserProjectWishlist.new(wishlist_params)
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
    params.permit(:project_id, :user_id)
  end
end
