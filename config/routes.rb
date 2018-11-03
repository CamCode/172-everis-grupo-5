Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


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

	root to: 'pages#index'


end
