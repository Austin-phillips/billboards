class SongsController < ApplicationController
  before_action :set_chart
  before_action :set_song, only: [:edit, :show, :update, :destroy]

  def show
  end
  
  def new
    @songs = @chart.songs.new
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

  def set_song
    @song = Song.find(params[:id])
  end

  def set_chart
    @chart = Chart.find(params[:chart_id])
  end

  def song_params
    params.require(:song).permit(:title)
  end

end
