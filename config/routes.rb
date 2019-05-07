Rails.application.routes.draw do
  devise_for :users, path: "/", path_names: {sign_in: "login", sign_out: "logout"}
  get "/", to: "pages#home", as: "root"
  get "/my-board", to: "pages#my_board", as: "my_board"
  get "/my-account", to: "pages#my_account", as: "my_account"
  get "/my-favourites", to: "pages#my_favourites", as: "my_favourites"
  get "/my-followings", to: "pages#my_followings", as: "my_followings"
  
  post "/payments", to: "payments#stripe"
  get "/payments/success", to: "payments#success"
  
  get "/users/:id", to: "users#show", as: "user"
  
  resources :comments
  resources :products
  resources :followers
  resources :favourites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
