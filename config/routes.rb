Rails.application.routes.draw do
  root "/"
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do 
    resources :posts do
      resources :comments
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
