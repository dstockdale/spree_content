Spree::Core::Engine.routes.draw do
  # Add your extension routes here
    namespace :admin do
      resources :contents
    end

    match '/static/*path', :to => 'contents#show', :via => :get, :as => 'static'

end
