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
end
