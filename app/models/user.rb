class User < ApplicationRecord
  has_many :product
  has_many :wish_list
  has_many :fund
  has_many :bank_datum

  validates :name, presence: true, numericality: false
  validates :lastName, presence: true, numericality: false
  validates :isAdmin, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
