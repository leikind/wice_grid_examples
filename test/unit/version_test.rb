require 'test_helper'

class VersionTest < ActiveSupport::TestCase
    should belong_to(:project)
end
