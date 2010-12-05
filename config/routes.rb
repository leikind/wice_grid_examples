R3::Application.routes.draw do
  resources :foo_tasks

  resources :basics1
  resources :basics2
  resources :upper_pagination_panel
  resources :basics3
  resources :basics4
  resources :basics5
  resources :basics6
  resources :joining_tables
  resources :two_associations
  resources :many_grids_on_page
  resources :custom_ordering
  resources :custom_ordering2
  resources :custom_filters1
  resources :custom_filters2
  resources :custom_filters3
  resources :custom_filters4
  resources :null_values
  resources :buttons
  resources :styling
  resources :adding_rows
  resources :no_records
  resources :erb_mode
  resources :integration_with_forms
  resources :auto_reloads
  resources :dates
  resources :all_records
  resources :csv_export
  resources :detached_filters
  resources :integration_with_application_view
  resources :integration_with_application
  resources :localization
  resources :action_column do
    collection do
      post :process_issues
    end
  end

  resources :custom_filter_params
  resources :saved_queries
  resources :resultset_processings
  resources :negation
  
  resources :tasks 
  resources :projects # just in order to have the helpers defined
  
  root :to => 'basics1#index'
  
  Wice::define_routes(self, 'queries')
  #   
  # connect ':controller/:action/:id'
  # connect ':controller/:action/:id.:format'
  
  
end
