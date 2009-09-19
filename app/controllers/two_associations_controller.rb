class TwoAssociationsController < ApplicationController
  
  def index
    @projects_grid = initialize_grid(Project, :include => [:customer, :supplier] )
  end

  protected

  def setup_ui
    @current_example_key = :two_associations_path
  end

end
