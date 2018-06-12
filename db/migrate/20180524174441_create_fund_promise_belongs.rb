class CreateFundPromiseBelongs < ActiveRecord::Migration[5.2]
  def change
    create_table :fund_promise_belongs do |t|
      t.references :promises, foreign_key: true
      t.references :user_project_fund, foreign_key: true

      t.timestamps
    end
  end
end
