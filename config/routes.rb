Rails.application.routes.draw do
	root "admin/customers#index"
	resources :customers do
		resources :workpieces
	end
end
