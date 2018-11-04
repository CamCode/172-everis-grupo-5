class Api::V1::ConsultarestudianteController < ApplicationController
	#GET index
	def index
#		@estudiante = Estudiante.all
#		render json: @estudiantes
		
#		url= 'http://localhost:3000/api/v1/consultarestudiante?id=1'
#		uri= URI.parse(request.url)
#		params= CGI.parse(uri.query)
#		id = params['id'].first
#		motivo_id= 1

#		Estudiante.update(id, :motivo_id => motivo_id)

#		@estudiante = Estudiante.find_by_id(id)
#		@estudiante.motivo_id = 2
#		@estudiante.save
#		@estudiante = Estudiante.find_by_id(id)
#		render json: @estudiante
		@estudiante = Estudiante.find_by_nombre(params[:id_estudiante])
		render json: @estudiante
	end	

#	def show
#		@estudiante = Estudiante.find_by_id(params[:id_estudiante])
#	end

end
