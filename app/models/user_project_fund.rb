class UserProjectFund < ApplicationRecord
  belongs_to :project, required: true
  belongs_to :user, required: true
  has_one :fund_promise_belong
  has_many :project
  has_one :user

  validates :project, presence: true
  validates :user, presence: true
  validates :amountFunded,
            numericality: true,
            presence: true
end
