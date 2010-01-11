class Nomination < ActiveRecord::Base
belongs_to :award
belongs_to :nominee
end

# == Schema Information
#
# Table name: nominations
#
#  id         :integer(4)      not null, primary key
#  award_id   :integer(4)
#  nominee_id :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

