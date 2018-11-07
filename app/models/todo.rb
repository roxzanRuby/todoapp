class Todo < ApplicationRecord #subclass from application record
  #validation to make sure you dont insert any empty objects in the database
  validates :name, presence: true
  validates :description, presence: true
end