Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :users do
 follows
      patch :follow, :unfollow
      resources :toots
=======
      resources :toots, only: [:create, :destroy, :show, :index]
 dev
    end
    resource :session, only: :create
  end
end
