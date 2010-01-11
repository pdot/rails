require File.dirname(__FILE__) + '/../test_helper'

class NomineesControllerTest < ActionController::TestCase

  def setup
    @nominee = Factory(:nominee)
  end

  should_be_restful do |resource|
    resource.formats = [:html, :xml]
    resource.destroy.flash = nil
  end
end
