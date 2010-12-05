require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  
  should belong_to(:created_by)
  should belong_to(:project)
  should belong_to(:priority)
  should belong_to(:status)
  should belong_to(:relevant_version)
  should belong_to(:expected_version)
  
  should have_and_belong_to_many(:assigned_users)
end
