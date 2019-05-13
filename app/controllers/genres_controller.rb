class GenresController < ApplicationController
  
  def index 
    @genres = Genres.all 
  end 
  
  def create 
    @genre = Genre.new(genre_params)
    @genre.save 
    redirect_to genre_path(params)
  end 
  
  def show 
    @genre = Genre.find(params[:id])
  end 
  
  def new 
  end 
end
