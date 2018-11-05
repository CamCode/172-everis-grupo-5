class Api::V1::CrearestudianteController < ApplicationController
	#POST create
	def create

		@estudiante = Estudiante.new(estudiante_params)
		if @estudiante.save
			render json: @estudiante
		else
			render json: {status: "error", message: "Error al crear estudiante"}
		end
	end

	def estudiante_params
	    params.permit(:tipoId, :numId, :nombre, :apellido,  :edad , :genero)
 	end

end