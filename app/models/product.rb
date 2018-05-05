class Product < ApplicationRecord
  belongs_to :category, required: true
  belongs_to :user, required: true
  has_one :user
  has_many :promise
  has_one :category
  has_many :wish_list
  has_many :fund

  validates :category, presence: true
  validates :user, presence: true
  validates :title,
            numericality: false,
            presence: true
  validates :description,
            presence: true
  validates :goal,
            numericality: true,
            presence: true
  validates :mainImage,
            presence: true
  validates :mainVideo,
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
