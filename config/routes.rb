ActionController::Routing::Routes.draw do |map|
  map.resources :agreements
  map.root :controller => 'agreements', :action => 'new'
end
