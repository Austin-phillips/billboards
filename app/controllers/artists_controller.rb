class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @Artist = Artist.all
  end

  def show
  end

  def edit
  end

  def new
    @Artist = Artist.new
  end

  def create
    @Artist = Artist.new(artist_params)
    if @Artist.save
      redirect_to artists_path
    else 
      render :create
    end

  end

  def update
  end

  def destroy
  end

  private
  
    def artist_params
      params.require(:artist).permit(:name)
    end

    def set_artist
      @Artist = Artist.find(params[:id])
    end
end
