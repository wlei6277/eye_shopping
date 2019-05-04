class Product < ApplicationRecord
  belongs_to :user
  belongs_to :department
  has_many :comments
  #get deleted if the post is removed
  has_many :favourites
  enum color: { red: 0, blue: 1, green: 2, yellow: 3, brown: 4, black: 5 }
  has_one_attached :picture
  #validation method to check if a user has favourited a product or not
  #this takes two arguments:
  #  1. The id of the user which is logged in
  #  2. The id of the product being shown
  #if a query on the Favourite table, using the user and product ids, returns an array greater than 0 then the product has already been favourited  
  def user_favourites(current_user, product)
    Favourite.where(user_id: current_user, product_id: product) > 0
  end



end
