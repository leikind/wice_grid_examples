class UserProjectParticipation < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  belongs_to :project_role
  
  validates_uniqueness_of :user_id, :scope => :project_id
end
