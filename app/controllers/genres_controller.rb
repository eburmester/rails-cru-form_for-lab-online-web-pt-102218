class GenresController < ApplicationController
  
  def index 
    @genres = Genres.all 
  end 
  
  def create 
    @genre = Genre.new(artist_params)
    @artist.save 
    redirect_to artist_path(params)
  end 
  
  def show 
    @genre = Genre.find(params[:id])
  end 
  
  def new 
  end 
end
