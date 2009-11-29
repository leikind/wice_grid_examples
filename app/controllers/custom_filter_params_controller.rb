class CustomFilterParamsController < ApplicationController

  # <example>
  def index
    @projects_grid = initialize_grid(Project)
  end
  # </example>

  protected

  def setup_ui
    @current_example_key = :custom_filter_params_path
  end

end
