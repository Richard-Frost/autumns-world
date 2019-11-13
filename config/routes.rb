Rails.application.routes.draw do

  get 'login' => "sessions#new"
  get 'privacy' => "sessions#privacy"
  post'sessions' => "sessions#create"
  get '/logout' => "sessions#destroy"
  resources :posts
  resources :users
  root to: "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
