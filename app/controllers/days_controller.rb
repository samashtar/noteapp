class DaysController < ApplicationController
  def index
    render json: Day.all
  end

  def show
    @day = Day.find(params[:id])
    render json: @day
  end

  def create
    @day = Day.create(day_params)
    render json: @day
  end

  def update
    @day = Day.find(params[:id])
    @day.update(day_params)
    render json: @day
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
  end

private

def day_params
  params.require(:day).permit(:name, :date)
end

end
