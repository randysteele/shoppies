class MoviesController < ApplicationController

    def index
        @movies = Movie.all
        render  @movies
    end

    def new 
        
    end
    

    def show 
        @movie = Movie.find_by(params[:id])
        render json: @movies
    end

private 
    def movie_params
        params.require(:movie).permit(:title, :released, :director, :awards)
    end    
end
