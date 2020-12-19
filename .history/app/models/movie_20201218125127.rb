class Movie < ApplicationRecord

    def movies
        response = RestClient.get "http://www.omdbapi.com/?i=tt3896198&apikey=bc20ec47"
        json = JSON.parse response  
    end


end
