class CreatePromises < ActiveRecord::Migration[5.1]
  def change
    create_table :promises do |t|
      t.references :product
      t.string :description
      t.date :deliveryDate
      t.decimal :price

      t.timestamps
    end
  end
end
