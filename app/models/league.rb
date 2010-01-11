class League < ActiveRecord::Base
has_and_belongs_to_many :users
has_many :selections
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

