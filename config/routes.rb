ActionController::Routing::Routes.draw do |map|

  map.resources :basics1
  map.resources :basics2
  map.resources :upper_pagination_panel
  map.resources :basics3
  map.resources :basics4
  map.resources :basics5
  map.resources :basics6
  map.resources :joining_tables
  map.resources :two_associations
  map.resources :many_grids_on_page
  map.resources :custom_ordering
  map.resources :custom_ordering2
  map.resources :custom_filters1
  map.resources :custom_filters2
  map.resources :custom_filters3
  map.resources :custom_filters4
  map.resources :null_values
  map.resources :buttons
  map.resources :styling
  map.resources :adding_rows
  map.resources :no_records
  map.resources :erb_mode
  map.resources :integration_with_forms
  map.resources :dates
  map.resources :all_records
  map.resources :csv_export
  map.resources :detached_filters
  map.resources :integration_with_application_view
  map.resources :integration_with_application
  map.resources :localization
  map.resources :action_column, :collection => {:process_issues => :post}
  map.resources :custom_filter_params
  map.resources :saved_queries
  map.resources :resultset_processings
  
  map.resources :tasks 
  map.resources :projects # just in order to have the helpers defined
  
  map.root :controller => 'basics1'
  
  Wice::define_routes(map, 'queries')
    
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
