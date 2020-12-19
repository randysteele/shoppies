require 'active_record'
require 'byebug'
require "rest-client"
class Movie < ActiveRecord::Base
    
  movies = RestClient.get "http://www.omdbapi.com/apikey.aspx"
  # byebug 
end
