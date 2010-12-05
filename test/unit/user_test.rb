require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should have_many(:created_tasks)
  should have_and_belong_to_many(:assigned_tasks)
  
  should have_many(:user_project_participations)
  should have_many(:projects)
end
