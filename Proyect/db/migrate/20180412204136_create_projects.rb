class CreateProjects < ActiveRecord::Migration[5.1]

belongs_to :UserProjectWishlist
belongs_to :User
belongs_to :Category
has_many :Promise

  def change
    create_table :projects do |t|
      t.integer :category
      t.int :publisher
      t.string :title
      t.string :description
      t.string :string
      t.decimal :goal
      t.datetime :finishDate
      t.string :mainvideo
      t.string :mainpicture

      t.timestamps
    end
  end
end
