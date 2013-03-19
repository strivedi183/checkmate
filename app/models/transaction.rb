# == Schema Information
#
# Table name: transactions
#
#  id               :integer          not null, primary key
#  amount           :decimal(, )
#  bank_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  transaction_type :string(255)
#


class Transaction < ActiveRecord::Base
  attr_accessible :amount, :transaction_type, :bank_id
  belongs_to :bank, :inverse_of => :transactions
  validates :amount, :transaction_type, :presence => true
  validates :amount, :numericality => true
end
