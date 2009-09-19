class Basics5Controller < ApplicationController
  
  def index
    @tasks_grid = initialize_grid(Task,
     :order => 'title',
     :order_direction => 'desc',
     :conditions => {:archived => false},
     :per_page => 20
    )
  end
  
  protected
  
  def setup_ui
    @current_example_key = :basics5_index_path
  end
  
end
