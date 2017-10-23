Rails.application.routes.draw do
  get '/access_oauth_client_apps', to: 'doorkeeper_client_authorization_#access_oauth_client_apps'

  devise_for :users
  use_doorkeeper do
    controllers :tokens => 'custom_tokens'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:user] do
        collection do
          get :me
        end
      end
    end
  end
  root to: 'static#index'
end
