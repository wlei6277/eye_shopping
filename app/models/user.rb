class User < ApplicationRecord
    has_many :favourites
    has_many :comments
    has_many :products
<<<<<<< HEAD
    has_many :followers, foreign_key: "follower_id" 
    has_many :followings, foreign_key: "following_id"
=======
    has_many :followers,:class_name => "User" 
    has_many :followings,:class_name => "User" 
>>>>>>> master

end
