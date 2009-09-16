class AddTasksUsers < ActiveRecord::Migration
  def self.up
    
    create_table :tasks_users, :id => false do |t|
      t.integer :task_id, :user_id
    end
  end

  def self.down
    drop_table :tasks_users
  end
end
