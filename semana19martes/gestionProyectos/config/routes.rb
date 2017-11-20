Rails.application.routes.draw do
  get 'pages/index'

  devise_for :users
  resources :projects
  resources :workers

  get 'proyects/:project_id/worker_out/:worker_id', :to => "projects#worker_out", :as => 'worker_out'
  get 'proyects/:project_id/worker_in/:worker_id', :to => "projects#worker_in", :as => 'worker_in'
  get 'pages/:worker_id', :to => "pages#worker_add", :as => 'worker_add'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
