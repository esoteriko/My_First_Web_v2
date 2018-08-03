Rails.application.routes.draw do
  post 'sessions/new'
  resources :sessions
  get 'inicio/index'
  resources :users
  root 'inicio#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
