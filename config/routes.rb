Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

namespace :api do
	namespace :v1 do
	get 'notes', to:  'notes#index'
	end
end

namespace :api do
	namespace :v1 do
	get 'clients', to:  'clients#index'
	end
end

root to:  'pages#index'
end


