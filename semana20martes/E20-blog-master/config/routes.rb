Rails.application.routes.draw do

  get 'pages/dashboard'
  get 'application/role_change/:id', to: 'application#role_change', as: 'role_change'
  
	resources :posts do
		resources :comments, only: [:create, :destroy]
  end
  

  

	devise_for :users, controllers: {
		sessions: 'users/sessions',
		registrations: 'users/registrations'
	}

	root 'posts#index'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
