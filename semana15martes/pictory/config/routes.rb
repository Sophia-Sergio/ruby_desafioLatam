Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/sign_up', to: "users#new"
  get 'session/new', to: "sessions#new"
  post 'users', to: "users#create"

  resources :sessions, only: [:create, :destroy]
  root 'users#new'
end
