class CreateUserProjectWishlists < ActiveRecord::Migration[5.1]
  def change
    create_table :user_project_wishlists do |t|
      t.integer :project
      t.integer :user

      t.timestamps
    end
  end
end
