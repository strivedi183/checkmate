class AddFromToTransactionsTable < ActiveRecord::Migration
  def change
    add_column :transactions, :from, :text, :default => 'User'
  end
end
