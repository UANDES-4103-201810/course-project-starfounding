class CreateUserProjectFunds < ActiveRecord::Migration[5.2]
  def change
    create_table :user_project_funds do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.float :amountFunded

      t.timestamps
    end
  end
end
