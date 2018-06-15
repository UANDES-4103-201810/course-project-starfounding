class FundsController < ApplicationController
  def show

  end
  def index
    @funds = Fund.all
    @promises = Promise.all
  end
  def new
    @fund = Fund.new
    @project= Project.find(params[:project_id])
  end

  def create
    @fund = Fund.new(fund_params)
    @index = users_profile_path
    respond_to do |format|
      if @fund.save
        format.html { redirect_to @index , notice: 'Project was successfully funded.' }
        format.json { render :show, status: :created, location: @fund }

      else
        format.html { render :new }
        format.json { render json: @fund.errors, status: :unprocessable_entity }
      end
    end
  end

  def fund_params
    params.permit(:project_id, :user_id, :amount)
  end
end
