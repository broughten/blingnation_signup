ActionController::Routing::Routes.draw do |map|
  map.resources :merchants

  map.resources :banks

  map.resources :email_addresses

  map.resources :agreements

  map.admin 'admin', :controller => 'admin', :action => 'show'
  map.rules 'rules', :controller => 'rules', :action => 'show'
  map.signups 'signups/:id', :controller => 'signups', :action => 'show'

  map.root :controller => 'agreements', :action => 'new'
end
