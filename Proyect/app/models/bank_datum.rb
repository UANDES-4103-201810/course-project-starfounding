class BankDatum < ApplicationRecord
  belongs_to :User

  validate :NotExpired
  validate :CardHolderName, presence: true


  def NotExpired
    if ExpirationDate.present? &&  ExpirationDate< Date.today
      errors.add(:ExpirationDate, "Expired card")
    end
  end

end
