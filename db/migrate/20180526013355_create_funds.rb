class CreateFunds < ActiveRecord::Migration[5.2]
  def change
    create_table :funds do |t|
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true
      t.float :amount

      t.timestamps
    end
  end
end
