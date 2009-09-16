ActionController::Routing::Routes.draw do |map|

  map.resources :basics1
  map.resources :basics2
  map.resources :basics3
  map.resources :basics4
  map.resources :tasks
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
