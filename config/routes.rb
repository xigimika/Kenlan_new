Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resources :users
	resources :products

get '/top' => 'products#top'
get '/show_edit' => 'users#show_edit'
root 'products#index'
get 'search_users' => 'users#search' ,as: 'user_search'
get 'search_products' => 'products#search' ,as: 'product_search'
end
