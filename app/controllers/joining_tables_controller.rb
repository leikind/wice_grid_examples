class JoiningTablesController < ApplicationController

  # <example>
  def index
    @tasks_grid = initialize_grid(Task,
      :include => [:priority, :status, :project, :assigned_users],
      :conditions => {:archived => false},
      :order => 'id'
    )
  end
  # </example>

  protected

  def setup_ui
    @current_example_key = :joining_tables_path
  end

end
