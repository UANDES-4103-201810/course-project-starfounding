class CreatePromises < ActiveRecord::Migration[5.1]
  def change
    create_table :promises do |t|
      t.integer :project
      t.string :description
      t.datetime :deliverydate
      t.decimal :price

      t.timestamps
    end
  end
end
