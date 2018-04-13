class Category < ApplicationRecord
  has_many :projects

  validate :name , presence: true
  validate :name, numericality: false

end
