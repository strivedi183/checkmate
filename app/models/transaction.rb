# == Schema Information
#
# Table name: transactions
#
#  id         :integer          not null, primary key
#  amount     :decimal(, )
#  type       :string(255)
#  bank_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Transaction < ActiveRecord::Base
  attr_accessible :amount, :type, :bank_id
  belongs_to :bank, :inverse_of => :tranactions
end
