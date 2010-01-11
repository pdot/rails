class Award < ActiveRecord::Base
has_many :nominations
has_many :nominees, :through => :nominations
end

# == Schema Information
#
# Table name: awards
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

