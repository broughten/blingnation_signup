ActionController::Routing::Routes.draw do |map|
  map.resources :merchants

  map.resources :banks

  map.resources :email_addresses

  map.resources :agreements
  map.root :controller => 'agreements', :action => 'new'
end
