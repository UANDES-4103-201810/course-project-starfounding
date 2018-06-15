class PromisesController < ApplicationController
  def show

  end
  def index
    @promises = Promise.all
  end
  def new
    @promise = Promise.new
    @project = Project.find(params[:project_id])
  end

  def create
    @promise = Promise.new(promise_params)
    @index = users_profile_path
    respond_to do |format|
      if @promise.save
        format.html { redirect_to @index, notice: 'Promise was successfully earned.' }
        format.json { render :index, status: :created, location: @promise }

      else
        format.html { render :new }
        format.json { render json: @promise.errors, status: :unprocessable_entity }
      end
    end
  end

  def promise_params
    params.permit(:project_id, :description, :deliveryDate, :price)
  end
end