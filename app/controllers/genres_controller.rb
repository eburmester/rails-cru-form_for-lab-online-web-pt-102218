class GenresController < ApplicationController
  
  def index 
    @genres = Genres.all 
  end 
  
  def create 
  end 
  
  def show 
    @genre = Genre.find(params[:id])
  end 
  
  def new 
  end 
end
