class League < ActiveRecord::Base
  # TODO: validate that each league has at least one user
  
  before_create :generate_passcode
  
  has_many :memberships
  has_many :users, :through => :memberships
  
  def generate_passcode
      chars = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ23456789'
      value = ""
      6.times{value  << chars[rand(chars.size)]}
      #value
      self.passcode = value
  end
    
end

# == Schema Information
#
# Table name: leagues
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  passcode    :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

