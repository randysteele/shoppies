class SearchController < ApplicationController
    require 'typhouse'

    def index 
        search = params[:q]
        if search 
            response = Typhoeus.get("http://www.omdbapi.com", params: {s: search})
            @movies = JSON.parse(resp.body)["Search"]
        else
            @movies = []
        end

    end



end
