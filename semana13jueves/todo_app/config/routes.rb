Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #primera parte
  get '/todos', to: 'todos#index'
  get '/new', to: 'todos#new'
  post '/todos', to: 'todos#create'
  post '/todos/:id', to: 'todos#show', as: 'todo'
  patch '/todos/:id', to: 'todos#update'
  delete '/todos/:id', to: 'todos#destroy'
  get '/todos/:id/complete' , to: 'todos#complete', as: 'complete_todo'
  get '/todos/list' , to: 'todos#list'

  #segunda parte
end
