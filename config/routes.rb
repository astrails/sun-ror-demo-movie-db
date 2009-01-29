ActionController::Routing::Routes.draw do |map|
  map.resources :movies
  map.root :controller => "movies"
end
