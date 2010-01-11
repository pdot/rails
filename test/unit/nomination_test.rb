require File.dirname(__FILE__) + '/../test_helper'

class NominationTest < ActiveSupport::TestCase
  should_have_db_column :award
  should_have_db_column :nominee
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

