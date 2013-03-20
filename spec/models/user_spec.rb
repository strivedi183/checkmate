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

require 'spec_helper'

describe User do
  describe '.create' do
    it 'has an id' do
      user = User.create(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a', balance: 5000)
      expect(user.id).to_not be nil
    end
    it 'fails validation when missing fields' do
      user = User.create
      expect(user.id).to be nil
    end
    it 'fails validation when balance is not a number' do
      user = User.create(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a', balance: 'five thousand')
      expect(user.id).to be nil
    end

    it 'creates a user instance' do
      user = User.create(name: 'bob', email: 'bob@gmail.com', password: 'a', password_confirmation: 'a', balance: 5000)
      expect(user).to be_an_instance_of(User)
    end
  end
end