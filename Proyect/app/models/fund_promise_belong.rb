class FundPromiseBelong < ApplicationRecord
  belongs_to :Promise
  belongs_to :UserProjectFund

  validates :Promise, presence: true
  validates :PromiseExist
  validates :fund, presence: true

  def PromiseExist
   ev= Promise.find(promise)
    return ev
  end

end
