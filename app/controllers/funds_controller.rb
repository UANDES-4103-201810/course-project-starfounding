class FundsController < ApplicationController
  def new
    @funds = Fund.new
  end

  def create
    @fund = Fund.new(fund_params)

    respond_to do |format|
      if @fund.save
        format.html { redirect_to @project, notice: 'Project was successfully funded.' }
      end
    end
  end

  def fund_params
    params.require(:fund).permit(:user_id,:project_id,:amount)
  end

end
