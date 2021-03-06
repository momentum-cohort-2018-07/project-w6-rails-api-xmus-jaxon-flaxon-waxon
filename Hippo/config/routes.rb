Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :users do
      patch :follow, :unfollow     
      resources :toots, only: [:create, :destroy, :show, :index]
    end
    resource :session, only: :create
  end
end

