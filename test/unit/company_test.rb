require 'test_helper'

class CompanyTest < ActiveSupport::TestCase

  should have_many(:customer_projects)
  should have_many(:supplier_projects)


end
