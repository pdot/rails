require File.dirname(__FILE__) + '/../test_helper'

class LeaguesControllerTest < ActionController::TestCase

  def setup
    @league = Factory(:league)
  end

  should_be_restful do |resource|
    resource.formats = [:html, :xml]
    resource.destroy.flash = nil
  end
end
