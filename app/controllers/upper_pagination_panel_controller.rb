class UpperPaginationPanelController < ApplicationController
  
  # <example>
  def index
     @tasks_grid = initialize_grid(Task)
  end
  # </example>
  protected
  
  def setup_ui
    @current_example_key = :upper_pagination_panel_index_path
  end
  
  
end
