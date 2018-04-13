class CreateUsers < ActiveRecord::Migration[5.1]

has_many :BankData
has_many :Project
has_many :UserProjectFund

  def change
    create_table :users do |t|
      t.string :email
      t.string :Name
      t.string :password
      t.boolean :isAdmin
      t.datetime :LastLogin

      t.timestamps
    end
  end
end
