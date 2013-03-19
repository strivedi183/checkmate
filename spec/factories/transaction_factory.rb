FactoryGirl.define do
  factory :transaction, class: Transaction do
    amount                 500
    type                   'deposit'
  end
end
