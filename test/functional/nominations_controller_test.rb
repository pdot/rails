require File.dirname(__FILE__) + '/../test_helper'

class NominationsControllerTest < ActionController::TestCase

  def setup
    @nomination = Factory(:nomination)
  end

  should_be_restful do |resource|
    resource.formats = [:html, :xml]
    resource.destroy.flash = nil
  end
end
