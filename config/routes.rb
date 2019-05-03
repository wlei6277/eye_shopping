Rails.application.routes.draw do
  devise_for :users, path: "/", path_names: {sign_in: "login"}
  get "/", to: "pages#home", as: "root"
  get "/myboard", to: "pages#myboard", as: "myboard"
  get "/myaccount", to: "pages#myaccount", as: "myaccount"
  get "/users/:id", to: "users#show", as: "user"
  
  resources :comments
  resources :products
  resources :followers
  resources :favourites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
