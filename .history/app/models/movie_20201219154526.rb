require 'active_record'
require 'byebug'
require "rest-client"
class Movie < ActiveRecord::Base
    
  movies = RestClient.get "https://www.omdbapi.com/?i=tt3896198&apikey=bc20ec47&"
  # byebug 
end
