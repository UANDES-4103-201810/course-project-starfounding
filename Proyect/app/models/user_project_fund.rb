class UserProjectFund < ApplicationRecord
  belongs_to :User
  belongs_to :Project
  has_one :FundPromiseBelong

  validate :funder, presence: true, numericality: true
  validate :project, presence: true, numericality: true
  validate :ProjectExist
  validate :amountfunded, presence: true, numericality: true

  def ProjectExist
    ev= Project.find(project)
    return ev
  end

end
