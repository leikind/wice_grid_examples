class TasksController < ApplicationController
  def edit
    render :text => "Here be dragons..."
  end
  
  def setup_ui
    @current_example_key = :csv_export_index_path
  end
end
