require 'active_record'
require 'byebug'
require "rest-client"
class Movie < ActiveRecord::Base
    
  movies = RestClient.get "http://www.omdbapi.com/?apikey=[bc20ec47]&"

  # apiey = bc20ec47
  
  
  # byebug 
end
