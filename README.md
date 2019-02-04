# Movie-API-Testing
### Project Brief
Create a SOM for the Movie Review API and test.

### Description
Created a SOM (Service Object Model) for the NY Times API and tested the movie reviews api (https://developer.nytimes.com/my-apps/movies-api) service.

### Technology and libaries used
* Ruby
* RSpec
* Github
* DotENV
* JSON
* HTTParty


## How to download
1. To download a copy click on 'clone or download' and you can download it as a zip file.
2. Unzip the file
3. Run rspec in the terminal and install gems if needed.


## How to Use
1. Create lib folder
2. Put the code into the lib folder
3. Instantiate the super class Movie.rb in your _spec.rb file
4. Open your spec_helper.rb and require_relative with the given path of the movie_review.rb file


              eg. require 'rspec'
                  require_relative '../lib/services/movie_review'
            
5. Run the method within that Movie.rb superclass
 
## How to test
 
1. Open https://developer.nytimes.com/my-apps/movies-api and create your own API key to use
2. Create a empty .env file and type out:

      > MOVIE_API_KEY= {insert_your_api_key_without_brackets}

3. Save file (You may want to create a .gitignore to avoid exposure of api keys in the github)


### Challenges
1. Retrieve API service and its data.
2. Creating different types of test
3. Thinking of exit criteria.

### Learning points
1. Retrieve API service and its data.
2. Setting up the file structure so that it is easily accessible and clearer.
3. Understanding what's need to be tested and how. 
4. Practicing API calling and understanding super class.