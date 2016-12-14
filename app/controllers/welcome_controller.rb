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
		response = HTTParty.get('https://api.meetup.com/2/events?key=40677639285a5787052683210655922&cities=newyork&sign=true')
#Use the class methods to get down to business quickly
		puts response.body, response.code, response.message, response.headers.inspect

# 		RMeetup::Client.api_key="40677639285a5787052683210655922"
# 		results=RMeetup::Client.fetch(:events,{:city => "CITY"})
# 		results.each do |result|
# # 		  # Do something with the result
# 		puts @result.title
# 		end
	end
end
# response = HTTParty.post(your_api_host_url/search_lists/search, {body: [#your form input data##]})

