require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  
  should_belong_to :created_by
  should_belong_to :project
  should_belong_to :priority
  should_belong_to :status
  should_belong_to :relevant_version
  should_belong_to :expected_version
  
  should_have_and_belong_to_many :assigned_users
end
