Rails.application.routes.draw do
  # resources :user_ballparks
  # resources :ballparks
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  

  get '/users', to: "users#index"
  get '/users/:id', to: "users#show"
  post '/users', to: 'users#create'
  get '/users/:id', to: "users#login"
  

end
