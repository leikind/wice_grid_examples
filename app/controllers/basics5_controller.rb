class Basics5Controller < ApplicationController
  
  def index
     @tasks_grid = initialize_grid(Task,
       :order => 'title',
       :order_direction => 'desc',
       :conditions => {:archived => false},
       :per_page => 40
     )
  end
  
  protected
  
  def setup_ui
    @page_title = 'Basics'
    @description = 'Setting the initial order, changing the number of records per page, conditions'
  end
  
end
