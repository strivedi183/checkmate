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

require 'spec_helper'

describe Transaction do
  describe '.create' do
    it 'has an id' do
      transaction = Transaction.create(amount: '1000', transaction_type: 'withdrawl')
      expect(transaction.id).to_not be nil
    end
    it 'fails validation when missing fields' do
      transaction = Transaction.create
      expect(transaction.id).to be nil
    end
    it 'fails validation when balance is not a number' do
      transaction = Transaction.create(amount: 'one thousand', transaction_type: 'withdrawl')
      expect(transaction.id).to be nil
    end
  end
end
