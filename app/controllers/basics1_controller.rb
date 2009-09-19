class Basics1Controller < ApplicationController
  
  def index
     @tasks_grid = initialize_grid(Task)
  end
  
  protected
  
  def setup_ui
    @current_example_key = :basics1_index_path
  end
  
  
end
