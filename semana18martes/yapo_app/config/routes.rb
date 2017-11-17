Rails.application.routes.draw do
  devise_for :users, :path => 'accounts', controllers: { registrations: "users/registrations" }
  resources :users do
    resources :products
  end
    
  get 'product/:id/sale', :to => "sales#create", :as => 'create_sale'
  get 'product/sales', :to => "sales#index", :as => 'sales'

  root "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
