require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should_have_many :created_tasks
  should_have_and_belong_to_many :assigned_tasks
  
  should_have_many :user_project_participations
  should_have_many :projects
end
