class Promise < ApplicationRecord
  belongs_to :product, required: true
  has_one :product
  has_many :fund_promise
  validates :description,
            presence: true
  validates :price,
            presence: true,
            numericality: true
  validates :delivery_is_not_in_the_past

  def delivery_is_not_in_the_past
    if deliveryDate.present? && deliveryDate <= Date.today
      errors.add(:deliveryDate, "Can't be in the past")
    end
  end
end
