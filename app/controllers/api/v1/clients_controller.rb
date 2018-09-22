class Api::V1::ClientsController < ApplicationController
	#GET index
	def index
		@clients = Cliente.all
		render json: @clients
	end	
end