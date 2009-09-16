class Basics2Controller < ApplicationController
  
  def index
     @tasks_grid = initialize_grid(Task)
  end
  
  protected
  
  def setup_ui
    @page_title = 'Basics: a simple grid'
    @description = 'Column names added'
  end
  
  
end
