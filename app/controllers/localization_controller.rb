class LocalizationController < ApplicationController

  # <example>

  before_filter :init_locale
  
  def init_locale
    if params[:lang]
      session[:lang] = params[:lang]
    end
    
    session[:lang] = :nl unless session[:lang]
    
    I18n.locale = session[:lang]
  end
  
  def index
    @tasks_grid = initialize_grid(Task,
      :include => [:priority, :status, :project, :assigned_users],
      :order => 'statuses.name',
      :custom_order => {
        'tasks.priority_id' => 'priorities.name',
        'tasks.status_id' => 'statuses.position',
        'tasks.project_id' => 'projects.name'
      }
    )
  end
  # </example>

  protected

  def setup_ui
    @current_example_key = :localization_index_path
  end

end
