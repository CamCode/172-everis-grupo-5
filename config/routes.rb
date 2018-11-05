Rails.application.routes.draw do

  resources :books
	namespace :api do
		namespace :v1 do
		get 'consultarusomotivos', to:  'consultarusomotivos#index'
		end
	end

	namespace :api do
		namespace :v1 do
		get 'consultarestudiante', to:  'consultarestudiante#index'
		end
	end

	namespace :api do
		namespace :v1 do
		#get 'consultarestudiante/:id_estudiante', to:  'consultarestudiante#index'			
		get 'consultarestudiante/:id_estudiante', to:  'consultarestudiante#index'
		end
	end

	namespace :api do
		namespace :v1 do
		get 'consultarmateria' , to: 'consultarmateria#index'	
		end
	end


	namespace :api do
		namespace :v1 do 
			post 'registrarmaterias', to: 'registrarmaterias#create'
		end
	end


	root to: 'pages#index'


end
