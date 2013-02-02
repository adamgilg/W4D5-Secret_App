SecretShareApp::Application.routes.draw do
  resource :sessions
  resources :users
  resources :secrets
  root to: 'dashboard#index'

end
