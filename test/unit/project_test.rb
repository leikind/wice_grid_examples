require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  
  should have_many(:tasks)
  should have_many(:user_project_participations)
  
  should have_many(:users)
  
  should_belong_to(:customer)
  should_belong_to(:supplier)
  
end
