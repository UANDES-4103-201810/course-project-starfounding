class UserProjectWishlist < ApplicationRecord
  belongs_to :project, required: true
  belongs_to :user, required: true
  has_one :user
  has_one :project

  validates :project, presence: true
  validates :user, presence: true
end
