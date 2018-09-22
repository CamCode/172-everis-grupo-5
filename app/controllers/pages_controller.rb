class PagesController < ApplicationController
	#GET index
	def index
		@notas=Notum.all
	end	
end