class Fund < ApplicationRecord
  belongs_to :product, required: true
  belongs_to :user, required: true
  has_one :fund_promise
  has_many :product
  has_one :user
  validates :amountFunded,
            numericality: true,
            presence: true

end
