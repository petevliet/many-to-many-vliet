Rails.application.routes.draw do
  root 'products#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  resources :products

  resources :companies do
      resources :company_reviews
      resources :products do
        resources :product_reviews
      end
  end

  resources :reviews

end
