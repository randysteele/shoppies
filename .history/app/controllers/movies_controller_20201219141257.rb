class MoviesController < ApplicationController

    def index
        @movie = Movie.all
        render json: @movie
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
