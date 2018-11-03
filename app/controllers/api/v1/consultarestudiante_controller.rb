class Api::V1::ConsultarestudianteController < ApplicationController
	#GET index
	def index
		@motivos = Motivo.all
		render json: @motivos
	end	
end
