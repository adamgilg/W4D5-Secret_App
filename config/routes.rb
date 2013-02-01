SecretShareApp::Application.routes.draw do
  resources :login
  resources :users

  root to: 'dashboard#index'

end
