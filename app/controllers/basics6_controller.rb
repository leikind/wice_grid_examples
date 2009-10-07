class Basics6Controller < ApplicationController
  
  # <example>
  def index
    @tasks_grid = initialize_grid(Task,
     :order => 'tasks.title',
     :order_direction => 'desc',
     :conditions => "archived = false",
     :per_page => 20
    )
  end
  # </example> 
  
  protected
  
  def setup_ui
    @current_example_key = :basics6_index_path
  end
  
end
