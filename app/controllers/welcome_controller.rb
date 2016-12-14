require 'httparty'
require 'json'

class WelcomeController < ApplicationController
	include HTTParty

	def index
	end

	def search
# API Call on this action
		# @meetups="https://api.meetup.com/2/events?key=40677639285a5787052683210655922&group_urlname=ny-tech&sign=true"
		# @results=@meetups["results"]
		# puts @meetups
		@response = HTTParty.get('https://api.meetup.com/find/events?&sign=true&photo-host=public&lon=-73.997684&lat=40.729795&key=40677639285a5787052683210655922', format: :json)
#Use the class methods to get down to business quickly
	
		puts @response.body, @response.code, @response.message, @response.headers.inspect

# 		RMeetup::Client.api_key="40677639285a5787052683210655922"
# 		results=RMeetup::Client.fetch(:events,{:city => "CITY"})
# 		results.each do |result|
# # 		  # Do something with the result
# 		puts @result.title
# 		end
	end
end
# response = HTTParty.post(your_api_host_url/search_lists/search, {body: [#your form input data##]})

# nice work on sorting out the http request.

# Possible next steps depending on your objective:
# 1.  parse the result to send to the view file and format accordingly. 
# 2. determine what you want the user to enter in the search field e.g. city name. Validate that parameter so you are not sending bad data to the api
# 3. add styling e.g. bootstrap gem - these resources might help, https://github.com/twbs/bootstrap-rubygemhttps://launchschool.com/blog/integrating-rails-and-bootstrap-part-1
# 4. refactor

# I’ll create a separate branch to give an example of step 1.

