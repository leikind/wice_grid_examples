class ActionColumnController < ApplicationController

  # <example>
  
  def index
    @tasks_grid = initialize_grid(Task,
      :include => [:priority, :status, :project, :assigned_users],
      :order => 'statuses.name',
      :custom_order => {  'tasks.priority_id' => 'priorities.name'  }
    )
  end
  
  def process_issues

    if params[:grid] && params[:grid][:selected]
      # processing tasks
      flash[:notice] = 'Selected tasks: ' + params[:grid][:selected].join(', ')
    end

    redirect_to action_column_index_path
  end
  
  # </example>

  protected

  def setup_ui
    @current_example_key = :action_column_index_path
  end

end
