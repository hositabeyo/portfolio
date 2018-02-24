Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'index', to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'edit', to: 'posts#new'
  
  get 'gallery', to: 'posts#index'

  
  resources :users, only: [:index]
  resources :posts
end
