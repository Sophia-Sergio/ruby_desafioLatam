Rails.application.routes.draw do
  resources :histories
  resources :admins, only: [:index, :edit] 

  get 'user_histories/:id', :to => "histories#user_histories", :as => 'user_histories'

  root "histories#index"
  devise_for :users, controllers: { registrations: "users/registrations" }
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
