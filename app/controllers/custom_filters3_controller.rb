class CustomFilters3Controller < ApplicationController

  # <example>
  def index
    @tasks_grid = initialize_grid(Task,
      :include => [:relevant_version, :expected_version, :project],
      :conditions => ['projects.id = ?', Project.find(:first)],
      :custom_order => {
        'tasks.expected_version_id' => 'expected_versions_tasks.name'
      }
    )
  end
  # </example>

  protected

  def setup_ui
    @current_example_key = :custom_filters3_index_path
  end

end
