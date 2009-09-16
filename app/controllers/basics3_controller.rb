class Basics3Controller < ApplicationController
  
  def index
     @tasks_grid = initialize_grid(Task)
  end
  
  protected
  
  def setup_ui
    @page_title = 'Basics: a grid with filters'
  end
  
end
