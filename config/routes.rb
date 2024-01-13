Rails.application.routes.draw do
  resources :instagram_user_profiles
  resources :sessions, only: [:new, :create, :destroy]
  get '/login' => 'sessions#new', as: 'login'
  get 'sessions/create'
  get '/logout' => 'sessions#destroy', as: 'logout'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  resources :users
  resources :posts do
    resources :comments , only: [:create, :destroy]
  end
  root to:'posts#index'
  namespace :api, default: { format: 'json' } do
    get 'posts/search', to: 'posts#search'
    resources :posts
  end
  namespace :api, default: { format: 'json' } do
    resources :instagram_user_profiles
  end
  namespace :api, default: { format: 'json' } do
    post '/login', to: 'sessions#create'
    resources :sessions
  end
end
