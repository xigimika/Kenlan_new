Rails.application.routes.draw do

  namespace :admins do
    get 'freepages/index'
  end

  namespace :admins do
    get 'emails/index'
  end

  namespace :admins do
    get 'emails/show'
  end

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
        resources :freepages
        resources :emails,only: [:index,:show]
        resources :homes,only: [:index]
    end

	resources :users
	resources :products
	resources :informations,only: [:index,:new,:note]
	resources :inquiries
  resources :freepages


get '/top' => 'products#top'
get 'informations/note'
root 'products#index'
get 'search_users' => 'users#search' ,as: 'user_search'
get 'search_products' => 'products#search' ,as: 'product_search'
get 'search_products_admins' => 'admins/products#search' ,as: 'admins_product_search'

  get 'inquiry' => 'inquiries#index'              # 入力画面
  post 'inquiry/confirm' => 'inquiries#confirm'   # 確認画面
  post 'inquiry/sousin' => 'inquiries#sousin'     # 送信完了画面

# get 'admins/homes/mail' => 'admins/homes#index_mail'
# get 'admins/homes/mail/show' => 'admins/homes/index_mail#show'
# get 'inquiry/received_email' => 'inquirys#email'

get 'free/top' => 'freepages#top'

end

