class Api::V1::ConsultarmateriaController < ApplicationController
	#GET index
	def index
		@consultarmateria = Materium.all
		render json: @consultarmateria
	end
end

