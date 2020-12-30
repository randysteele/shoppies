require 'typhoeus'
class SearchController < ApplicationController
  

    def index 
        search = params[:q]
        if search 
            response = Typhoeus.get("http://www.omdbapi.com", params: {s: search})
            @movies = JSON.parse(response.body)["Search"]
        else
            @movies = []
        end

    end


end
