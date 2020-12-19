class MoviesController < ApplicationController

    def index
        @movie = Movie.all
        render json: @movie
    end
    

    def show 
        @movies = Movie.find_by[:id]
        render json: @movies
    end
end
