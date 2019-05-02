class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favourites
  has_many :comments
  has_many :products
  has_many :followers, foreign_key: "follower_id" 
  has_many :followings, foreign_key: "following_id"
  
  #validation method to check if a user has favourited a product or not
  #this takes two named arguments:
  #  > current_user: The id of the user which is logged in
  #  > product: The id of the product being shown
  #if a query on the Favourite table, using the user and product ids, returns an array greater than 0 then the product has already been favourited  
  def user_favourites(current_user: , product:)
    Favourite.where(user_id: current_user, product_id: product).length > 0
  end
  
  #validation method to check if a user is following another user or not
  #this takes two arguments:
  #  1. The id of the user which is logged in
  #  2. The id of the user displayed on the screen
  #if a query on the Following table, using the logged-in user and displayed user ids, returns an array greater than 0 then the user is already following the displayed user  
  def user_follows(current_user: , product:)
    Favourite.where(follower_id: current_user, following_id: displayed_user).length > 0
  end
end
