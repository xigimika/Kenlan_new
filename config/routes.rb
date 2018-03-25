Rails.application.routes.draw do

	devise_for :admins, controllers: {
	  sessions:      'admins/sessions',
	  passwords:     'admins/passwords',
	  registrations: 'admins/registrations'
	}

	devise_for :users, controllers: {
	  sessions:      'users/sessions',
	  passwords:     'users/passwords',
	  registrations: 'users/registrations'
	}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   namespace :admins do
        resources :users
        resources :products
        resources :homes,only: [:index]
    end

	resources :users
	resources :products
	resources :informations,only: [:index,:new,:note]

get '/top' => 'products#top'
get 'informations/note'
root 'products#index'
get 'search_users' => 'users#search' ,as: 'user_search'
get 'search_products' => 'products#search' ,as: 'product_search'
get 'search_products_admins' => 'admins/products#search' ,as: 'admins_product_search'




end
