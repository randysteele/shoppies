require 'active_record'
require 'byebug'
require "rest-client"
class Movie < ActiveRecord::Base
    
    # def movies
    #     response = RestClient.get "http://www.omdbapi.com/?i=tt3896198&apikey=bc20ec47"
    #     json = JSON.parse response  

    #     if !json.nil? 
    #         json["data"].map do |movie|
    #             Movie.create(title: "#{movie["title"]}")
    #         end        
    #   else 
    #         puts "error seeding movies"
    #     end
    # end

    response = RestClient.get "http://www.omdbapi.com/?i=tt3896198&apikey=bc20ec47"
    byebug
end
