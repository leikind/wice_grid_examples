class Status < ActiveRecord::Base
  has_many :tasks
end
