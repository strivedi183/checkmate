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

class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :balance
  has_secure_password
  has_many :banks, :inverse_of => :user
  validates :name, :email, :password, :password_confirmation, :balance, :presence => true
  validates :balance, :numericality => true
end
