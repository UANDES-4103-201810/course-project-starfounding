class Category < ApplicationRecord
  has_many :project
  validates :name,
            presence: true,
            numericality: false
end
