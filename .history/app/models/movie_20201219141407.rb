require 'active_record'
require 'byebug'
require "rest-client"
class Movie < ActiveRecord::Base
    
  response = RestClient.get "http://www.omdbapi.com/?i=tt3896198&apikey=bc20ec47"
   byebug 
end
