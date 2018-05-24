class CreateBankData < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_data do |t|
      t.references :user, foreign_key: true
      t.string :cardHolderName
      t.date :expirationDate

      t.timestamps
    end
  end
end
