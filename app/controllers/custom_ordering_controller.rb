class CustomOrderingController < ApplicationController
  
  def index
    @status_grid1 = initialize_grid(Status, 
      :order => 'statuses.name',
      :custom_order => {
        'statuses.name' => 'length( ? )'
      }
    )
    @status_grid2 = initialize_grid(Status, 
      :name => 'g2',
      :order => 'statuses.name',
      :custom_order => {
        'statuses.name' => 'statuses.position'
      }
    )
  end

  protected

  def setup_ui
    @current_example_key = :custom_ordering_index_path
  end

end
