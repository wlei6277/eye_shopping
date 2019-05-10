class Donation < ApplicationRecord
    #Validate that the user has entered an amount which is a number and greater than 1
    validates :amount, numericality: { only_integer: true, greater_than_or_equal_to: 1 }


    belongs_to :donor, :class_name => "User" 
    belongs_to :donee, :class_name => "User"
end
