class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update]

  def index
    @artist = Artist.all
  end

  def show
  end

  def edit
  end

  def new
  end

  def create
  end

  end

  def update
  end

  def destroy

  private
  
    def artist_params
      params.require(:artist).permit(:name)
    end

end
