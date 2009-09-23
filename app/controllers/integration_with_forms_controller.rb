class IntegrationWithFormsController < ApplicationController
  
  def index
    @archived = params[:archived] == '1' ? true : false
    
    @tasks_grid = initialize_grid(Task,
      :include => [:priority, :status, :project, :assigned_users],
      :order => 'statuses.name',
      :conditions => ['tasks.archived = ?', @archived],
      :custom_order => {
        'tasks.priority_id' => 'priorities.name',
        'tasks.status_id' => 'statuses.position',
        'tasks.project_id' => 'projects.name'
      }
    )
  end

  protected

  def setup_ui
    @current_example_key = :integration_with_forms_path
  end

end
