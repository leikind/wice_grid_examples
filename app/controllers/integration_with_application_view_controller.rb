class IntegrationWithApplicationViewController < ApplicationController

  # <example>
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
  end
  # </example>

  protected


  def setup_ui
    @current_example_key = :integration_with_application_view_index_path
  end
end
