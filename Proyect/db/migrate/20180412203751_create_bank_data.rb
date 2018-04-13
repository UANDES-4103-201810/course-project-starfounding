class CreateBankData < ActiveRecord::Migration[5.1]

belongs_to :User

  def change
    create_table :bank_data do |t|
      t.integer :user
      t.string :CardHolderName
      t.datetime :ExpirationDate

      t.timestamps
    end
  end
end
