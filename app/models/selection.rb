class Selection < ActiveRecord::Base
  has_one :nomination
  belongs_to :user
end

# == Schema Information
#
# Table name: selections
#
#  id         :integer(4)      not null, primary key
#  user_id    :integer(4)
#  league_id  :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

