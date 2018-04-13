class Category < ApplicationRecord
  has_many :product
  validates :name,
            presence: true,
            numericality: false
end
