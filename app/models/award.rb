class Award < ActiveRecord::Base
  has_many :nominations
  has_many :nominees, :through => :nominations
  
  def nominees
    Nominee.scoped( :joins => { :nominations => :award }, :conditions => { :nominations => { :award_id => id }} )
  end
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

