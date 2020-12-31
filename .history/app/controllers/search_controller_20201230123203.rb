# require 'typhoeus'
class SearchController < ActionController::Base
  

    def index 
        @search = params[:q]
        if @search 
            @response = Typhoeus.get("http://www.omdbapi.com", params: {s: @search})
            @movies = JSON.parse(@response.body)
            byebug
        else
            @movies = []
        end
    end
     
   def movie    
    imdbID = params[:q]
    if imdbID
        response = Typhoeus.get("http://www.omdbapi.com", params: {i: imdbID})
        @movie = JSON.parse(response.body)
    else
        @movie = {}
    end
   end
end
