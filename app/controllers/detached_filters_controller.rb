class DetachedFiltersController < ApplicationController
  
  def index
    @tasks_grid = initialize_grid(Task,
      :include => [:priority, :status, :project, :assigned_users],
      :order => 'statuses.name',
      :custom_order => {
        'tasks.priority_id' => 'priorities.name',
        'tasks.status_id' => 'statuses.position',
        'tasks.project_id' => 'projects.name'
      }
    )

    @projects_grid = initialize_grid(Project,
      :include => [:customer, :supplier],
      :name => 'g2',
      :enable_export_to_csv => true,
      :csv_file_name => 'projects'
    )
  end

  protected

  def setup_ui
    @current_example_key = :detached_filters_path
  end

end
