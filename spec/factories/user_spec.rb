FactoryGirl.define do
  factory :user, class: User do
    name                    'Dick'
    email                   'dick@gmail.com'
    password                 'a'
    password_confirmation    'a'
  end
end