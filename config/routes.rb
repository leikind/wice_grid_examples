ActionController::Routing::Routes.draw do |map|

  map.resources :basics1
  map.resources :basics2
  map.resources :basics3
  map.resources :basics4
  map.resources :basics5
  map.resources :joining_tables
  map.resources :two_associations
  
  map.resources :tasks # just in order to have the helpers defined
  
  map.root :controller => 'basics1'
    
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
