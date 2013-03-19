# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  is_admin        :boolean          default(FALSE)
#  balance         :decimal(, )      default(0.0)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :user, class: User do
    name                     'user'
    email                    'user@gmail.com'
    password                 'a'
    password_confirmation    'a'
    balance                  500
  end
end
