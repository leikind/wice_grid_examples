class IntegrationWithApplicationController < ApplicationController

  # <example>
  def index
    @tasks_grid = initialize_grid(Task,
      :per_page => 10,
      :include => [:priority, :status, :project, :assigned_users],
      :order => 'statuses.name',
      :custom_order => {
        'tasks.priority_id' => 'priorities.name',
        'tasks.status_id' => 'statuses.position',
        'tasks.project_id' => 'projects.name'
      },
      :with_resultset => :process_selection
    )
  end

  attr_reader :selected_tasks

  protected

  def process_selection(wrapper_lambda)
    if params[:process_selected_tasks]
      @selected_tasks = wrapper_lambda.call
    end
  end
  # </example>

  def setup_ui
    @current_example_key = :integration_with_application_index_path
  end
end
