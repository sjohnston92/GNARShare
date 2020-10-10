Rails.application.routes.draw do
  
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do 
    resources :posts do
      resources :comments

      
    end
  end
  get '*other', to: 'static#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
