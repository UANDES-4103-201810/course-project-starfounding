class User < ApplicationRecord
  has_many :project
  has_many :user_project_wishlist
  has_many :user_project_fund
  has_many :bank_datum

  after_initialize :init

  validates :first_name, presence: true, numericality: false
  validates :last_name, presence: true, numericality: false

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    full_name = "#{first_name} #{last_name}"
  end
  def init
    self.isAdmin ||=false
  end
end
