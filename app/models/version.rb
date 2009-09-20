class Version < ActiveRecord::Base
  belongs_to :project
  
  include ToDropdownMixin
end
