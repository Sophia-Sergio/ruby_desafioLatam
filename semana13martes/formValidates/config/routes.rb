Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'sales/done'
  resources 'sales', only: ['create', 'new', 'done']
  root 'sales#new'
end
