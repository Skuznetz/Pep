Rails.application.routes.draw do 
  devise_for :users
  root 'posts#index'
  resources :posts
  
  resources :tags, only: [:show]
  resources :categories,only: [:show]

  namespace :admin do 
    resources :posts,except: [:show,:index]
    resources :categories,except: [:show]
    resources :pictures, only: [:create, :destroy]
  end
end
