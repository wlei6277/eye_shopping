class Product < ApplicationRecord
  belongs_to :user_id
  belongs_to :department_id
end
