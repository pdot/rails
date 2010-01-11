require File.dirname(__FILE__) + '/../test_helper'

class SelectionsControllerTest < ActionController::TestCase

  def setup
    @selection = Factory(:selection)
  end

  should_be_restful do |resource|
    resource.formats = [:html, :xml]
    resource.destroy.flash = nil
  end
end
