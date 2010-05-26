class ResultsetProcessingsController < ApplicationController
  
  # <example>
  def index
    @tasks_grid = initialize_grid(Task,
      :include => :project,
      :conditions => {:archived => false},
      :order => 'id'
    )

    @project_data = {} # {project_id => data}
    @tasks_grid.with_resultset do |records|
      project_ids = records.map(&:project_id).uniq
      @project_data.merge! time_consuming_operation_better_done_in_one_shot(project_ids)
    end    
  end
  # </example>
  
  protected

  # Returns a hash {project_id => result}
  def time_consuming_operation_better_done_in_one_shot(project_ids)
    project_ids.inject({}) do |r, project_id|
      r[project_id] = "Hard to get data for Project #{project_id}"
      r
    end
  end

  def setup_ui
    @current_example_key = :resultset_processings_path
  end
  
end
