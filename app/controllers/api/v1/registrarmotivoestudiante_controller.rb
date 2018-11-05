class Api::V1::RegistrarmotivoestudianteController < ApplicationController
	#PUT update
	def update

		@estudiante = Estudiante.find_by_id(params[:id])
		@estudiante.update(estudiante_params)
			if @estudiante.update
				render json: @estudiante
			else
				render json: @estudiante.errors, status: :bad_request
#				render json: {status: "error", message: "Error al registrar motivo"}
		end
	end

	def estudiante_params
	    params.permit(:motivo_id )
  end
end
