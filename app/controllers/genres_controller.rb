class GenresController < ApplicationController
  
  def index 
    @genres = Genres.all 
  end 
  
  def create 
    @genre = Genre.new(genre_params)
    @genre.save 
    redirect_to genre_path(params)
  end 
  
  def edit 
  end 
  
  def show 
    @genre = Genre.find(params[:id])
  end 
  
  def update 
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)
    redirect_to genre_path(params)
  end 
  
  private 
  
  def artist_params
    params.require(:genre).permit(:name)
  end 
end
