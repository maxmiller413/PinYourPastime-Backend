Rails.application.routes.draw do
  resources :user_ballparks
  resources :ballparks
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
