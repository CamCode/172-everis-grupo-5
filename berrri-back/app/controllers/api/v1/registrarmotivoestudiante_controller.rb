class Api::V1::RegistrarmotivoestudianteController < ApplicationController
	#PUT update
	def update

		@estudiante = Estudiante.find_by_id(params[:id])
		@estudiante.update(estudiante_params)
		render json: @estudiante

	end

	def estudiante_params
	    params.permit(:motivo_id )
  end
end
