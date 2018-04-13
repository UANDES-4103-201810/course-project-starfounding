class CreateFundPromiseBelongs < ActiveRecord::Migration[5.1]
  def change
    create_table :fund_promise_belongs do |t|
      t.integer :promise
      t.integer :fund

      t.timestamps
    end
  end
end
