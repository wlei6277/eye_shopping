class Product < ApplicationRecord
  belongs_to :user
  belongs_to :department
  has_many :comments
  #get deleted if the post is removed
  has_many :favourites
  enum color: { red: 0, blue: 1, green: 2, yellow: 3, brown: 4, black: 5 }
  has_one_attached :picture

end
