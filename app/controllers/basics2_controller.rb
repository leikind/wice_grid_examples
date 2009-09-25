class Basics2Controller < ApplicationController
  
  # <example>
  def index
     @tasks_grid = initialize_grid(Task)
  end
  # </example>
  protected
  
  def setup_ui
    @current_example_key = :basics2_index_path
  end
  
  
end
