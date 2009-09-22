class Priority < ActiveRecord::Base
  acts_as_list
  
  has_many :tasks

  include ToDropdownMixin
  
  def self.urgent
    find_by_name("Urgent")
  end

end
