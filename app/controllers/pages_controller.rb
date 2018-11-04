class PagesController < ApplicationController
	#GET index
	def index
		UserNotifierMailer.send_signup_email.deliver
	end	
end