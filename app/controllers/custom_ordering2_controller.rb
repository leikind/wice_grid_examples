class CustomOrdering2Controller < ApplicationController

  # <example>
  def index
    @tasks_grid = initialize_grid(Task,
      :include => [:priority, :status, :project, :assigned_users],
      :conditions => { :archived => false},
      :order => 'statuses.name',
      :custom_order => {
        'statuses.name' => 'statuses.position'
      }
    )
  end
  # </example>

  protected

  def setup_ui
    @current_example_key = :custom_ordering2_index_path
  end

end
