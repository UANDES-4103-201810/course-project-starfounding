class CreateUserProjectFunds < ActiveRecord::Migration[5.1]

belongs_to :User
belongs_to :Project
has_one :FundPromiseBelong

  def change
    create_table :user_project_funds do |t|
      t.integer :funder
      t.integer :project
      t.decimal :amountfunded

      t.timestamps
    end
  end
end
