class Promise < ApplicationRecord
  belongs_to :project, required: true
  has_one :project
  has_many :fund_promise_belong

  validates :project, presence: true
  validates :description,
            presence: true
  validates :price,
            presence: true,
            numericality: true
  validate :delivery_is_not_in_the_past

  def delivery_is_not_in_the_past
    if deliveryDate.present? && deliveryDate <= Date.today
      errors.add(:deliveryDate, "Can't be in the past")
    end
  end
end
