require 'httparty'
require 'json'

class WelcomeController < ApplicationController

	def index
	end

	def search
#API Call on this action
		response = HTTParty.get('https://api.meetup.com/find/events?&sign=true&photo-host=public&lon=-73.997684&lat=40.729795&key=40677639285a5787052683210655922', format: :json)
		@meetups = response
		# puts @response.body, @response.code, @response.message, @response.headers.inspect
	end
end