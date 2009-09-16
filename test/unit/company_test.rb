require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  
  should_have_many :customer_projects
  should_have_many :supplier_projects
  
  
end
