class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.references :project, foreign_key: true
      t.string :description
      t.date :deliveryDate
      t.float :price

      t.timestamps
    end
  end
end
