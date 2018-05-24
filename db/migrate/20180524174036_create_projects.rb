class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true
      t.string :title
      t.string :description
      t.float :goal
      t.datetime :finishDate
      t.string :mainVideo
      t.string :mainImage

      t.timestamps
    end
  end
end
