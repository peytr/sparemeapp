Rails.application.routes.draw do
  
  root 'pages#home'

  devise_for :users

  get '/contact', to: 'pages#show'
  post '/contact', to: 'pages#contact_email'


  get '/profile', to: 'profiles#show'
  post '/profile', to: 'profiles#create'
  get '/profile/edit', to: 'profiles#edit'
  patch '/profile', to: 'profiles#update'

  post '/requests/:request_id/offers', to: 'offers#create', as: 'requests_offer'
  

  resources :requests do
    resources :offers
  end

  resources :offers do
    member do
      post :accept_offer
    end
  end

  # get 'offer/show', to: 'offers#show'

  # get '/requests/index', to: 'requests#index'
  # get '/requests/new', to: 'requests#new'
  # get '/request', to: 'requests#show'
  # post '/request', to: 'requests#create'
  # get '/request/edit', to: 'requests#edit'
  # patch '/request', to: 'requests#update'

end
