class AddRatingToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :rating, :float
  end
end
