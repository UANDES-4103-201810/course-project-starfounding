class FundPromiseBelong < ApplicationRecord
  belongs_to :user_project_fund, required: true
  belongs_to :promise, required: true
  has_one :user_project_fund
  has_one :promise

  validates :user_project_fund, presence: true
  validates :promise, presence: true
end
