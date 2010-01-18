class League < ActiveRecord::Base
  has_many :memberships
  has_many :users, :through => :memberships
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

