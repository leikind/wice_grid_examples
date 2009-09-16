class Basics4Controller < ApplicationController
  
  def index
     @tasks_grid = initialize_grid(Task)
  end
  
  protected
  
  def setup_ui
    @page_title = 'Basics: a grid with filters'
    @description = 'Blockless column definitions and turning off filter with :no_filter => true'
  end
  
end
