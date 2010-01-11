require File.dirname(__FILE__) + '/../test_helper'

class AwardTest < ActiveSupport::TestCase
  should_have_db_column :name
  should_have_db_column :description
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

