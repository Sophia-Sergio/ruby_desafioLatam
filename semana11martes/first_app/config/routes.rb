Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  
  get 'pages/one'
  get 'pages/two'
  get 'pages/three'
  root 'pages#one'
end
