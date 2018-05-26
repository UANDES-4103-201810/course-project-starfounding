class CategoriesController < ApplicationController
  def show

  end
  def index
    @categories = Category.all
  end
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Cateogry was successfully created.' }
        format.json { render :index, status: :created, location: @category }

      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
