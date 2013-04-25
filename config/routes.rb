PeanutGallery::Application.routes.draw do
  root to: 'homepage#index'
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create]
  resources :blogs, only: [:new, :create]
end
