require 'typhoeus'
class SearchController < ApplicationController
  

    def index 
        @search = params[:q]
        if @search 
            @response = Typhoeus.get("http://www.omdbapi.com", params: {s: @search})
            @movies = JSON.parse(response.body)
        else
            @movies = []
        end
    end
     
   def movie    
    @imdbid = params[:q]
    if imdbid
        @response = Typhoeus.get("http://www.omdbapi.com", params: {i: imdbid})
        @movie = JSON.parse(response.body)
    else
        @movie = {}
    end
   end
end
