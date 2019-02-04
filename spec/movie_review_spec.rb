require 'spec_helper'

describe 'Movie Review' do

  context 'Godfather Review' do

    before(:all) do
      @movie = MovieReview.new
      @movie.latest_movie
    end

    it 'should be a hash' do
      expect(@movie.retrieve_result).to be_kind_of(Hash)
    end

  end
end
