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
  has_one_attached :picture

  
  #validation method to check if a user has favourited a product or not
  #this takes two named arguments:
  #  > current_user: The id of the user which is logged in
  #  > product: The id of the product being shown
  #using the exists? method the function will return true if a favourite can be found for that user and product id and false if not  
  def user_favourites(current_user: , product:)
    Favourite.where(user_id: current_user, product_id: product).exists?
  end
  
  #validation method to check if a user is following another user or not
  #this takes two named arguments:
  #  1. current_user: The id of the user which is logged in
  #  2. displayed_user: The id of the user displayed on the screen
  #using the exists? method the function will return true if a following can be found for that user and following id and false if not  
  def user_follows(current_user: , displayed_user:)
    Follower.where(follower_id: current_user, following_id: displayed_user).exists?
  end
end
