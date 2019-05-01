Rails.application.routes.draw do
  resources :comments
  resources :products
  resources :followings
  resources :favourites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
