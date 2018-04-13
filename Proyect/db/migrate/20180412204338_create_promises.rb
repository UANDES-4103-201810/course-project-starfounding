class CreatePromises < ActiveRecord::Migration[5.1]

belongs_to :Project
has_many :FindPromiseBelong

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
