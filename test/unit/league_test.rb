require File.dirname(__FILE__) + '/../test_helper'

class LeagueTest < ActiveSupport::TestCase
  should_have_db_column :name
  should_have_db_column :passcode
  should_have_db_column :description
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

