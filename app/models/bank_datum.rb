class BankDatum < ApplicationRecord
  belongs_to :user, required: true
  has_one :user
  validates :cardHolderName,
            presence: true,
            numericality: false
  validates :expirationDate,
            presence: true
end
