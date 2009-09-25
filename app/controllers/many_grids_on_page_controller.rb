class ManyGridsOnPageController < ApplicationController

  # <example>
  def index
    @projects_grid = initialize_grid(Project, 
      :include => [:customer, :supplier],
      :name => 'g1'
    )
    @tasks_grid = initialize_grid(Task, :name => 'g2')
  end
  # </example>
  
  protected

  def setup_ui
    @current_example_key = :many_grids_on_page_index_path
  end

end
