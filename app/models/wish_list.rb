class WishList < ApplicationRecord
  belongs_to :product, required: true
  belongs_to :user, required: true
  has_one :user
  has_one :product

  validates :product, presence: true
  validates :user, presence: true

end
