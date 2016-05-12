Rails.application.routes.draw do
  root to: 'home#index'

  get '/auth/:provider/callback' => 'application#authentication_callback'
  get '/logout' => 'application#logout', as: 'logout'
end
