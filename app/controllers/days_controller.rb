class DaysController < ApplicationController
  def index
    render json: Day.all
  end

  def show
    @day = Day.find(params[:id])
    render json: @day
  end


end
