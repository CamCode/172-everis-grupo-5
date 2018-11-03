class Api::V1::NotesController < ApplicationController
	#GET index
	def index
		@notes = Notum.all
		render json: @notes
	end	
end