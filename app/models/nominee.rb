class Nominee < ActiveRecord::Base
  has_many :nominations
  has_many :awards, :through => :nominations
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

