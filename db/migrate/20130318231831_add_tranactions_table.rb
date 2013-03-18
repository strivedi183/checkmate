class AddTranactionsTable < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.decimal :amount
      t.string :type
      t.integer :bank_id
      t.timestamps
    end
  end
end
