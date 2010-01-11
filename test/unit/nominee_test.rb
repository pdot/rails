require File.dirname(__FILE__) + '/../test_helper'

class NomineeTest < ActiveSupport::TestCase
  should_have_db_column :name
  should_have_db_column :description
  should_have_db_column :movie_name
  should_have_db_column :first_name
  should_have_db_column :last_name
end

# == Schema Information
#
# Table name: nominees
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  description :text
#  movie_name  :string(255)
#  first_name  :string(255)
#  last_name   :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

