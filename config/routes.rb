Rails.application.routes.draw do
  
  get 'offers/new'
  get 'offers/edit'
  get 'offers/show'
  root 'pages#home'

  devise_for :users

  get '/profile', to: 'profiles#show'

  post '/profile', to: 'profiles#create'

  get '/profile/edit', to: 'profiles#edit'

  patch '/profile', to: 'profiles#update'


  resources :requests do
    resources :offers
  end

  # get '/requests/index', to: 'requests#index'
  
  # get '/requests/new', to: 'requests#new'

  # get '/request', to: 'requests#show'

  # post '/request', to: 'requests#create'

  # get '/request/edit', to: 'requests#edit'

  # patch '/request', to: 'requests#update'

end
