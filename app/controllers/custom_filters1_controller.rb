class CustomFilters1Controller < ApplicationController

  # <example>
  def index
    @versions_grid1 = initialize_grid(Version, :name => 'g1', :include => :project)
    @versions_grid2 = initialize_grid(Version, :name => 'g2', :include => :project)
    @versions_grid3 = initialize_grid(Version, :name => 'g3', :include => :project)
    @versions_grid4 = initialize_grid(Version, :name => 'g4', :include => :project)
  end
  # </example>
  
  protected

  def setup_ui
    @current_example_key = :custom_filters1_index_path
  end

end
