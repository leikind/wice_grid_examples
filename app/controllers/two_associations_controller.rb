class TwoAssociationsController < ApplicationController
  # <example>
  def index
    @projects_grid = initialize_grid(Project, :include => [:customer, :supplier] )
  end
  # </example>
  protected

  def setup_ui
    @current_example_key = :two_associations_path
  end

end
