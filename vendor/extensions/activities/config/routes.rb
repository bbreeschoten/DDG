Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :activities do
    resources :activities, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :activities, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :activities, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
