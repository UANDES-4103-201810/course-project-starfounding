class User < ApplicationRecord
  has_many :product
  has_many :wish_list
  has_many :fund
  has_many :bank_datum

  validates :email,
            presence: true,
            format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
  validates :password,
            format: {with: /\A[a-zA-Z0-9\.]{8,12}\z/ ,
                                message: "Password must be between 8 to 12 alphanumeric characters"}
  validates :name,
            presence: true,
            numericality: false
  validates :isAdmin,
            presence: true
  validates :lastLogin,
            allow_blank: true
end
