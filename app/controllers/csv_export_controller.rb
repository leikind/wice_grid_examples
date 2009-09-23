class CsvExportController < ApplicationController
  
  def index
    @tasks_grid = initialize_grid(Task,
      :include => [:priority, :status, :project, :assigned_users],
      :order => 'statuses.name',
      :custom_order => {
        'tasks.priority_id' => 'priorities.name',
        'tasks.status_id' => 'statuses.position',
        'tasks.project_id' => 'projects.name'
      },
      :name => 'g1',
      :enable_export_to_csv => true,
      :csv_file_name => 'tasks'
    )

    @projects_grid = initialize_grid(Project,
      :include => [:customer, :supplier],
      :name => 'g2',
      :enable_export_to_csv => true,
      :csv_file_name => 'projects'
    )

    export_grid_if_requested('g1' => 'tasks_grid', 'g2' => 'projects_grid') do
      # usual render or redirect code executed if the request is not a CSV export request
    end
  end

  protected

  def setup_ui
    @current_example_key = :csv_export_index_path
    @view_files = ['app/views/csv_export/index.html.erb', 
                    'app/views/csv_export/_tasks_grid.html.erb', 
                    'app/views/csv_export/_projects_grid.html.erb']
  end

end
