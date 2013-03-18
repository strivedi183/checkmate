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

class Bank < ActiveRecord::Base
  attr_accessible :name, :balance, :user_id
  has_many :transactions, :inverse_of => :bank
  belongs_to :user, :inverse_of => :banks
  validates :name, :balance, :presence => true
  validates :balance, :numericality => true
end
