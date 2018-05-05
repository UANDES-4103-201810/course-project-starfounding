class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.string :title
      t.string :description
      t.string :goal
      t.string :decimal
      t.date :finishDate
      t.string :mainVideo
      t.string :mainImage
      t.integer :rating

      t.timestamps
    end
  end
end
