Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  resources :users, only: [:show] do
    resources :likes, only: [:index, :create]
  end

  get '/movies' => 'movies#index'
  get '/movies/:omdb_id' => 'movies#show'
end