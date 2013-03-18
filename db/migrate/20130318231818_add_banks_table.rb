class AddBanksTable < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :name
      t.decimal :balance
      t.integer :user_id
      t.timestamps
    end
  end
end
