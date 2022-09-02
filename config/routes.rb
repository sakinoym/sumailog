Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:create]
  
  resources :properties, only: [:show, :new, :create, :edit, :update, :destroy]
  
  resources :logs, only: [:create, :destroy]
  
  resources :conditions, only: [:new, :create, :edit, :update]
end
