Spree::Core::Engine.routes.draw do
  namespace :admin do
    resources :arrangements
  end
  if Rails.env == 'test'
    match '*path', :to => 'static_contents#show', :via => :get, :as => 'static'
  end
end