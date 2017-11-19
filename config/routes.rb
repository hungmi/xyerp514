Rails.application.routes.draw do
	root "admin/customers#index"
	namespace :admin do
		resources :customers do
			resources :workpieces
		end
		resources :workpieces do
			resources :manufacturing_records
		end
		resources :factories
	end
end
