class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:edit, :show]

  def show
  end
  
  def new
    @Song = Song.new
  end

  def edit
  end

  def create 
    @Song = @Artist.Song.new(song_params)
  end

  private

  def set_song
    @Song = Song.find(params[:id])
  end

  def set_artist
    @Artist = Artist.find(params[:artist_id])
  end

  def song_params
    params.require(:song).permit(:title)
  end
end
