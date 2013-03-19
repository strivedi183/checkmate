FactoryGirl.define do
  factory :bank, class: Bank do
    name                     'chase'
    balance                  400_000
  end
end