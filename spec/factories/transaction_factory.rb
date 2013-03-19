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

FactoryGirl.define do
  factory :transaction, class: Transaction do
    amount                 500
    type                   'deposit'
  end
end
