Rails.application.routes.draw do
	root "admin/customers#index"
	namespace :admin do
		resources :customers do
			resources :workpieces
		end	
	end
end
