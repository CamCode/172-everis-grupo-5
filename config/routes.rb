Rails.application.routes.draw do

	namespace :api do
		namespace :v1 do
		get 'consultarusomotivos', to:  'consultarusomotivos#index'
		end
	end


	namespace :api do
		namespace :v1 do
		get 'consultarestudiantes/:nombre_estudiante', to:  'consultarestudiante#show'
		end
	end

	namespace :api do
		namespace :v1 do
		get 'consultarestudiantes', to:  'consultarestudiante#index'
		end
	end

	namespace :api do
		namespace :v1 do
		put 'registrarmotivo/estudiante', to:  'registrarmotivoestudiante#update'
		end
	end

	namespace :api do
		namespace :v1 do
		put 'modificardatos/estudiante', to:  'modificardatosestudiante#update'
		end
	end

	namespace :api do
		namespace :v1 do
		post 'crearestudiante', to:  'crearestudiante#create'
		end
	end

	namespace :api do
		namespace :v1 do
		get 'consultarmateria' , to: 'consultarmateria#index'	
		end
	end


	root to: 'pages#index'


end
