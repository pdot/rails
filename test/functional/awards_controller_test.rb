require File.dirname(__FILE__) + '/../test_helper'

class AwardsControllerTest < ActionController::TestCase

  def setup
    @award = Factory(:award)
  end

  should_be_restful do |resource|
    resource.formats = [:html, :xml]
    resource.destroy.flash = nil
  end
end
