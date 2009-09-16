class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :created_by_id
      t.integer :project_id
      t.date :due_date
      t.integer :priority_id
      t.integer :status_id
      t.integer :relevant_version_id
      t.integer :expected_version_id
      t.float :estimated_time
      t.boolean :archived
      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
