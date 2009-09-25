class NullValuesController < ApplicationController
  # <example>
  def index
    @tasks_grid = initialize_grid(Task,
      :include => :priority,
      :custom_order => {
        'tasks.priority_id' => 'priorities.name'
      }
    )
  end
  # </example>
  protected

  def setup_ui
    @current_example_key = :null_values_path
  end

end
