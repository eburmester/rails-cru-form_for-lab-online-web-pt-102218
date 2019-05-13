class ArtistsController < ApplicationController
  def index
    @artists = Artist.all 
  end
  
  def edit 
  end

  def show 
    @artist = Artist.find(params[:id])
  end 
  
  def create 
    @artist = Artist.new(artist_params)
    @artist.save 
    redirect_to artist_path(params)
  end 
  
  def update 
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(params)
  end 
  
  private 
  
  def artist_params(*args)
    params.require(:artist).permit(*args)
  end 
end
