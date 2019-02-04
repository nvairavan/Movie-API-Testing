require 'httparty'
require 'json'
require_relative '../Movie'
require 'dotenv'

Dotenv.load('.env')

class MovieReview
  include HTTParty

  base_uri 'https://api.nytimes.com'

  
  def latest_movie
    api_key = ENV['MOVIE_API_KEY']
    @latest_movie_data = JSON.parse(self.class.get("/svc/movies/v2/reviews/search.json?query=godfather&api-key=#{api_key}").body)
  end

  def retrieve_result
    @latest_movie_data
  end

end