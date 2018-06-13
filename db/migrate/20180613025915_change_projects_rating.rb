class ChangeProjectsRating < ActiveRecord::Migration[5.2]
  def change
    change_column(:projects, :rating, :boolean)
    rename_column(:projects, :rating, :is_outstanding)
  end
end
