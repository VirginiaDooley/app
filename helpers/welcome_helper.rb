require 'httparty'
require 'json'

module WelcomeHelper
	def format_time(time)
    Time.at(time).strftime("%a %d %B, %H:%M")
  end
end