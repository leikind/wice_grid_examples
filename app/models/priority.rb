class Priority < ActiveRecord::Base
  acts_as_list
  
  has_many :tasks

  include ToDropdownMixin

end
