class AddWiceGridSerializedQuery < ActiveRecord::Migration

  def self.up
    create_table :wice_grid_serialized_queries do |t|
      t.column :name,      :string
      t.column :grid_name, :string
      t.column :query,     :text

      t.timestamps
    end
    add_index :wice_grid_serialized_queries, :grid_name
    add_index :wice_grid_serialized_queries, [:grid_name, :id]
  end

  def self.down
    drop_table :wice_grid_serialized_queries
  end
end
