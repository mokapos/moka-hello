Rails.application.routes.draw do
  root to: 'home#index'

  get '/auth/:provider/callback' => 'application#authentication_callback'
  get '/logout' => 'application#logout', as: 'logout'
  get '/refresh_token' => 'home#refresh_token', as: 'refresh_token'
  resources :items, only: [:index]
end
