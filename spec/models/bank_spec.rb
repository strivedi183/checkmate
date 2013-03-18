# == Schema Information
#
# Table name: banks
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  balance    :decimal(, )
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Bank do
  describe '.create' do
    it 'has an id' do
      bank = Bank.create(name: 'chase', balance: '1000')
      expect(bank.id).to_not be nil
    end
    it 'fails validation when missing fields' do
      bank = Bank.create
      expect(bank.id).to be nil
    end
    it 'fails validation when balance is not a number' do
      bank = Bank.create(name: 'chase', balance: 'one thousand')
      expect(bank.id).to be nil
    end
  end
end