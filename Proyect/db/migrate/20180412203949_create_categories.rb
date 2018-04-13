class CreateCategories < ActiveRecord::Migration[5.1]

has_many :projects

  def change
    create_table :categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
