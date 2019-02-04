# require 'json'
require_relative './services/movie_review'

class Movie
  
  def movie_review
    MovieReview.new
  end

end