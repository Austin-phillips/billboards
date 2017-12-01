class ChartsController < ApplicationController
  before_action :set_chart, only: [:show, :edit, :update]

  def index
    @chart = Chart.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def chart_params
    params.require(:chart).permit(:name)
  end

  def set_chart
    @chart = Chart.find(params[:id])
  end

end
