class CreateFundPromises < ActiveRecord::Migration[5.1]
  def change
    create_table :fund_promises do |t|
      t.references :fund, foreign_key: true
      t.references :promise, foreign_key: true

      t.timestamps
    end
  end
end
