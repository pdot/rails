require File.dirname(__FILE__) + '/../test_helper'

class MembershipsControllerTest < ActionController::TestCase

  def setup
    @membership = Factory(:membership)
  end

  should_be_restful do |resource|
    resource.formats = [:html, :xml]
    resource.destroy.flash = nil
  end
end
