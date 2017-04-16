Rails.application.routes.draw do 
  root 'posts#index'
  resources :posts
<<<<<<< HEAD
  resources :pictures, only: [:create, :destroy]
  resources :tags, only: [:show]
=======
  resources :tags,only:[:show]
>>>>>>> 1ветка
end
