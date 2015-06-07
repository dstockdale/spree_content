Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :arrangements
  end

  match '/static/*path', :to => 'contents#show', :via => :get, :as => 'static'
end