class Api::V1::ConsultarencuestaController < ApplicationController
	#GET indexx
	def index
		@encuesta = Encuestum.all
		render json: @encuesta
	end
end

