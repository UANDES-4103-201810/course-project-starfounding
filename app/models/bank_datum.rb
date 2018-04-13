class BankDatum < ApplicationRecord
  belongs_to :user, required: true
  has_one :user

  validates :user, presence: true
  validates :cardHolderName,
            presence: true,
            numericality: false
  validates :expirationDate,
            presence: true
end
