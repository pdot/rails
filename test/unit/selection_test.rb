require File.dirname(__FILE__) + '/../test_helper'

class SelectionTest < ActiveSupport::TestCase
  should_have_db_column :user
  should_have_db_column :league
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

