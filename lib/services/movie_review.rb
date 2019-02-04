require 'httparty'
require 'json'
require_relative '../Movie'
require 'dotenv'

Dotenv.load('.env')

class MovieReview
  include HTTParty

  base_uri 'https://api.nytimes.com'

  
  def latest_movie(title)
    api_key = ENV['MOVIE_API_KEY']
    @latest_movie_data = JSON.parse(self.class.get("/svc/movies/v2/reviews/search.json?query=#{title}&api-key=#{api_key}").body)
  end

  def retrieve_all_result
    @latest_movie_data
  end

  def retrieve_status
    @latest_movie_data['status']
  end

  def retrieve_copyright
    @latest_movie_data['copyright']
  end

  def retrieve_has_more
    @latest_movie_data['has_more']
  end

  def retrieve_num_results
    @latest_movie_data['num_results']
  end

  def retrieve_results
    @latest_movie_data['results']
  end

  def retrieve_all_display_title
    display_title = []
    retrieve_results.each do |result|
      display_title << result['display_title']
    end
    display_title
  end

  def retrieve_all_mpaa_rating
    mpaa_rating = []
    retrieve_results.each do |result|
      mpaa_rating  << result['mpaa_rating']
    end
    mpaa_rating
  end

  def retrieve_all_critics_pick
    critics_pick = []
    retrieve_results.each do |result|
      critics_pick << result['critics_pick']
    end
    critics_pick
  end

  def retrieve_all_byline
    byline = []
    retrieve_results.each do |result|
      byline << result['byline']
    end
    byline
  end

  def retrieve_all_headline
    headline = []
    retrieve_results.each do |result|
      headline << result['headline']
    end
    headline
  end

  def retrieve_all_summary_short
    summary_short = []
    retrieve_results.each do |result|
      summary_short << result['summary_short']
    end
    summary_short
  end

  def retrieve_all_publication_date
    publication_date = []
    retrieve_results.each do |result|
      publication_date << result['publication_date']
    end
    publication_date
  end

  def retrieve_all_opening_date
    opening_date = []
    retrieve_results.each do |result|
      opening_date << result['opening_date']
    end
    opening_date
  end

  def retrieve_all_date_updated
    date_updated = []
    retrieve_results.each do |result|
      date_updated << result['date_updated']
    end
    date_updated
  end

  def retrieve_all_link
    link = []
    retrieve_results.each do |result|
      link << result['link']
    end
    link
  end

  def retrieve_all_type
    type = []
    retrieve_all_link.each do |result|
      type << result['type']
    end
    type
  end

  def retrieve_all_url
    url = []
    retrieve_all_link.each do |result|
      url << result['url']
    end
    url
  end

  def retrieve_all_suggested_link_text
    suggested_link_text = []
    retrieve_all_link.each do |result|
      suggested_link_text << result['suggested_link_text']
    end
    suggested_link_text
  end

  def retrieve_all_multimedia
    multimedia = []
    retrieve_results.each do |result|
      multimedia << result['multimedia']
    end
    multimedia
  end

end