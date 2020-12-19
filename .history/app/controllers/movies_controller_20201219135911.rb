class MoviesController < ApplicationController

    def index
        @movie = Movie.all
        render json: @movie
    end
    

    def show 
        @movies = Movie.find_by(params[:id])
        render json: @movies
    end

    
end
