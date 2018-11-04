class PagesController < ApplicationController
	#GET index
	def index
		@notas=Notum.all
		UserNotifierMailer.send_signup_email.deliver
	end	
end