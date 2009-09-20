class CreateVersions < ActiveRecord::Migration
  def self.up
    create_table :versions do |t|
      t.string :name
      t.integer :project_id
      t.string  :status
      t.timestamps
    end
  end

  def self.down
    drop_table :versions
  end
end
