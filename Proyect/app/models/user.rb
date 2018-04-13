class User < ApplicationRecord
  has_many :BankData
  has_many :Project
  has_many :UserProjectFund

  validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
  validates :password, presence: true
  validates :password, format: {with: /\A[a-zA-Z0-9\.]{8,12}\z/ , message: "assword must be between 8 to 12 alphanumeric characters"}
  validates :isAdmin, presence: true
  validates :Name, format: {with: /[a-zA-Z]/}, presence: true
  validates :LastLogin, allow_blank: true


end
