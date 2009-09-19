class JoiningTablesController < ApplicationController
  
  def index
    @tasks_grid = initialize_grid(Task,
      :include => [:priority, :status, :project, :assigned_users],
      :conditions => 'tasks.archived = false',
      :order => 'id'
    )
  end

  protected

  def setup_ui
    @current_example_key = :joining_tables_path
  end

end
