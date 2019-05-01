class User < ApplicationRecord
    has_many :favourites
    has_many :comments
    has_many :products
    has_many :followers,:class_name => "User" 
    has_many :followings,:class_name => "User" 

end
