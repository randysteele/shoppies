class MoviesController < ApplicationController

    def index
        @movie = Movie.all
        render: json: @movie.to_json
    end
    
end
