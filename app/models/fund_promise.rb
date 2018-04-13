class FundPromise < ApplicationRecord
  belongs_to :fund, required: true
  belongs_to :promise, required: true
  has_one :fund
  has_one :promise
end
