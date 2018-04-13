class WishList < ApplicationRecord
  belongs_to :product, required: true
  belongs_to :user, required: true
  has_one :user
  has_one :product
end