class Promise < ApplicationRecord
  belongs_to :Project
  has_many :FindPromiseBelong

  validate :ProyectExist
  validate :desciption, presence: true
  validate :deliverydate, presence:true
  validate :delivery_cannot_be_in_the_past
  validate :price, presence:true, numericality: true

  def ProjectExist
    ev= Project.find(project)
    return ev
  end

  def delivery_cannot_be_in_the_past
    if daliverydate.present? && deliverydate < Date.today
      errors.add(:deliverydate, "Can't be in the past")
    end
  end

end
