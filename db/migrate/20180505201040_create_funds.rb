class CreateFunds < ActiveRecord::Migration[5.1]
  def change
    create_table :funds do |t|
      t.references :product, foreign_key: true
      t.references :user, foreign_key: true
      t.decimal :amountFunded

      t.timestamps
    end
  end
end
