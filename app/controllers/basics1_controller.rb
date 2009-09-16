class Basics1Controller < ApplicationController
  
  def index
     @tasks_grid = initialize_grid(Task)
  end
  
  protected
  
  def setup_ui
    @page_title = 'Basics: Most simple grid'
  end
  
  
end
