class Api::V1::RegistrarmateriasController < ApplicationController
	#POST create
	def create
    	@materia = Materium.new(materia_params)

   
      if @materia.save
        render json: @materia
      else
        render json: {status: "error", message: "Error al Registrar Materia"} 
      end

	end
	
    def materia_params
      	params.permit(:idMateria, :nombreMateria,)
	end
end
 