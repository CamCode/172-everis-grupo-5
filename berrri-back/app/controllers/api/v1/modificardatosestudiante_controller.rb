class Api::V1::ModificardatosestudianteController < ApplicationController
	#PUT update
	def update

		@estudiante = Estudiante.find_by_id(params[:id])
		if @estudiante.update(estudiante_params)
			render json: @estudiante
		else
			render json: {status: "error", message: "Error al registrar motivo"}
		end
	end

	def estudiante_params
	    params.permit(:nombre, :apellido, :genero, :edad )
  end
end
