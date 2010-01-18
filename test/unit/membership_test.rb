require File.dirname(__FILE__) + '/../test_helper'

class MembershipTest < ActiveSupport::TestCase
  should_have_db_column :league
  should_have_db_column :user
end
