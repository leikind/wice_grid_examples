require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  
  should have_many(:tasks)
end
