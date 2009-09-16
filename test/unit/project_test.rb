require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  
  should_have_many :tasks
  should_have_many :user_project_participations
  
  should_have_many :users
  
  should_belong_to :customer
  should_belong_to :supplier
  
end
