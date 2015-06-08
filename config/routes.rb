Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :arrangements
  end
  match '*path', :to => 'static_contents#show', :via => :get, :as => 'static'
end