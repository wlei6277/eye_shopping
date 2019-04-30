class Follower < ApplicationRecord
  belongs_to :follower, :class_name => "Users" 
  belongs_to :following, :class_name => "Users"
end
