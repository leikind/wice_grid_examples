class CreateProjectRoles < ActiveRecord::Migration
  def self.up
    create_table :project_roles do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :project_roles
  end
end
