class Api::V1::ConsultarusomotivosController < ApplicationController
	#GET index
	def index
		@motivos = Motivo.all
		render json: @motivos
	end	
end
