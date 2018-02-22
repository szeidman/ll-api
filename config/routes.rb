Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :users, only: [:show] do
    resources :products, only: [:index, :show, :create, :destroy]
  end
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
