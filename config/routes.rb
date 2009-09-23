ActionController::Routing::Routes.draw do |map|

  map.resources :basics1
  map.resources :basics2
  map.resources :basics3
  map.resources :basics4
  map.resources :basics5
  map.resources :joining_tables
  map.resources :two_associations
  map.resources :many_grids_on_page
  map.resources :custom_ordering
  map.resources :custom_ordering2
  map.resources :custom_filters1
  map.resources :custom_filters2
  map.resources :custom_filters3
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
  
  map.resources :tasks # just in order to have the helpers defined
  map.resources :projects # just in order to have the helpers defined
  
  map.root :controller => 'basics1'
    
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
