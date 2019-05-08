Rails.application.routes.draw do
  devise_for :users, path: "/", path_names: {sign_in: "login", sign_out: "logout"}
  get "/", to: "pages#home", as: "root"
  get "/my-board", to: "pages#my_board", as: "my_board"
  get "/my-account", to: "pages#my_account", as: "my_account"
  get "/my-favourites", to: "pages#my_favourites", as: "my_favourites"
  get "/my-followings", to: "pages#my_followings", as: "my_followings"
  
  post "/payments", to: "payments#stripe"
  
  get "/payments/submit", to: "payments#submit"
  get "/payments/success", to: "payments#success"
  post "/products/:id", to: "products#link_click", as: "link_click"
  
  get "/users/:id", to: "users#show", as: "user"
  get "/users/donate/:id", to: "users#donate", as: "donate"
  
  get "/donations/success", to: "donations#success", as: "donation_success"
  get "/donations/new", to: "donations#new", as: "new_donation"
  get "/donations/submit/:id", to: "donations#submit", as: "submit_donation"
  post "/donations", to: "donations#create", as:"donations"
  post "/recieved-donations", to: "donations#stripe", as:"stripe"


  resources :comments
  resources :products
  resources :followers
  resources :favourites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
