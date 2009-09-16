class CreateUserProjectParticipations < ActiveRecord::Migration
  def self.up
    create_table :user_project_participations do |t|
      t.integer :project_id
      t.integer :user_id
      t.integer :project_role_id

      t.timestamps
    end
  end

  def self.down
    drop_table :user_project_participations
  end
end
