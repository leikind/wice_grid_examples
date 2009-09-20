class Status < ActiveRecord::Base
  has_many :tasks
  
  include ToDropdownMixin
  
end
