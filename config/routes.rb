Rails.application.routes.draw do
  
  root 'pages#home'

  devise_for :users

  get '/profile', to: 'profiles#show'

  post '/profile', to: 'profiles#create'

  get '/profile/edit', to: 'profiles#edit'

  patch '/profile', to: 'profiles#update'

end
