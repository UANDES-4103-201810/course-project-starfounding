class Project < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :user, optional: true
  has_one :user
  has_many :promise
  has_one :category
  has_many :user_project_wishlist
  has_many :user_project_fund

  validates :category_id, presence: true
  validates :user_id, presence: true
  validates :title,
            numericality: false,
            presence: true
  validates :description,
            presence: true
  validates :goal,
            numericality: true,
            presence: true
  validates :rating,
            presence:true,
            allow_blank: true
  validate :product_creation_is_not_in_the_past

  def product_creation_is_not_in_the_past
    if finishDate.present? && finishDate < Date.today
      errors.add(:finishDate, "Can't be in the past")
    end
  end
end
