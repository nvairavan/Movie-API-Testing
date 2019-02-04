require 'spec_helper'

describe 'Movie Review' do

  context 'Godfather Review' do

    before(:all) do
      @movie = MovieReview.new
      @movie.latest_movie('godfather')
    end

    it 'should return the entire data as a hash' do
      expect(@movie.retrieve_all_result).to be_kind_of(Hash)
    end

    it 'should return the status as a string' do
      expect(@movie.retrieve_status).to be_kind_of(String)
    end

    it 'should return the copyright as a string' do
      expect(@movie.retrieve_copyright).to be_kind_of(String)
    end

    it 'should return the has_more as a true or false' do
      expect(@movie.retrieve_has_more).to eq (false) 
    end

    it 'should return the num_result as integer' do
      expect(@movie.retrieve_num_results).to be_kind_of(Integer)
    end

    it 'should return the results as array' do
      expect(@movie.retrieve_results).to be_kind_of(Array)
    end

    it 'should return the display_title as string' do
      @movie.retrieve_all_display_title.each do |display_title|
        expect(display_title).to be_kind_of(String)
      end
    end

    # This test fails because two display title doesn't contain "Godfather" text. 
    # Also those two display titlt doesn't have anything in commom. 
    it 'should return the display_title with godfather' do
      @movie.retrieve_all_display_title.each do |display_title|
        expect(display_title).to include("Godfather")
      end
    end

    it 'should return the mpaa_rating as string' do
      @movie.retrieve_all_mpaa_rating.each do |mpaa_rating|
        expect(mpaa_rating).to be_kind_of(String)
      end
    end

    it 'should return the mpaa_rating length between 0-5' do
      @movie.retrieve_all_mpaa_rating.each do |mpaa_rating|
        expect(mpaa_rating.length).to be_between(0,5)
      end
    end

    it 'should return the critics_pick as integer' do
      @movie.retrieve_all_critics_pick.each do |critics_pick|
        expect(critics_pick).to be_kind_of(Integer)
      end
    end

    it 'should return the critics_pick either 0 or 1' do
      @movie.retrieve_all_critics_pick.each do |critics_pick|
        expect(critics_pick).to eq(0) | eq(1)
      end
    end

    it 'should return the byline as string' do
      @movie.retrieve_all_byline.each do |byline|
        expect(byline).to be_kind_of(String)
      end
    end

    it 'should return the headline as string' do
      @movie.retrieve_all_headline.each do |headline|
        expect(headline).to be_kind_of(String)
      end
    end

    it 'should return the summary_short as string' do
      @movie.retrieve_all_summary_short.each do |summary_short|
        expect(summary_short).to be_kind_of(String)
      end
    end

    it 'should return the publication_date as string' do
      @movie.retrieve_all_publication_date.each do |publication_date|
        expect(publication_date).to be_kind_of(String)
      end
    end

    it 'should return the opening_date as string' do
      @movie.retrieve_all_opening_date.each do |opening_date|
        expect(opening_date).to be_kind_of(String) | be(nil)
      end
    end

    it 'should return the date_updated as string' do
      @movie.retrieve_all_date_updated.each do |date_updated|
        expect(date_updated).to be_kind_of(String)
      end
    end

    it 'should return the link as Hash' do
      @movie.retrieve_all_link.each do |link|
        expect(link).to be_kind_of(Hash)
      end
    end

    it 'should return the type as string' do
      @movie.retrieve_all_type.each do |type|
        expect(type).to be_kind_of(String)
      end
    end

    it 'should return the type as ARTICLE' do
      @movie.retrieve_all_type.each do |type|
        expect(type).to include("article")
      end
    end

    it 'should return the url as string' do
      @movie.retrieve_all_url.each do |url|
        expect(url).to be_kind_of(String)
      end
    end

    it 'should return the url starting with http' do
      @movie.retrieve_all_url.each do |url|
        expect(url).to start_with("http:")
      end
    end

    it 'should return the suggested_link_text as string' do
      @movie.retrieve_all_suggested_link_text.each do |suggested_link_text|
        expect(suggested_link_text).to be_kind_of(String)
      end
    end

    it 'should return the suggested_link_text with "Read the New York Times" text in it' do
      @movie.retrieve_all_suggested_link_text.each do |suggested_link_text|
        expect(suggested_link_text).to include("Read the New York Times")
      end
    end

    it 'should return the multimedia as string' do
      @movie.retrieve_all_multimedia.each do |multimedia|
        expect(multimedia).to be(nil)
      end
    end
  end
end
