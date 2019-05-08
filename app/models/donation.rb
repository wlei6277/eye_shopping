class Donation < ApplicationRecord
    belongs_to :donor, :class_name => "User" 
    belongs_to :donee, :class_name => "User"
end
