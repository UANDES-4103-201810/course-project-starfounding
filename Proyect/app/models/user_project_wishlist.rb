class UserProjectWishlist < ApplicationRecord
  has_many :Projects
  belongs_to :User

  validates :project, numericality: true
  validates :user, numericality: true
  
end
