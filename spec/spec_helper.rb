require 'rspec'
require 'json'
require 'httparty'
require_relative '../lib/services/movie_review'
require 'dotenv'

Dotenv.load('.env')

RSpec.configure do |config|
  config.formatter = :documentation
end