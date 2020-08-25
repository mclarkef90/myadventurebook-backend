Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :users do
        resources :adventures, only: [:index, :create]
        resources :comments, only: [:index]
      end
      resources :adventures, only: [:index, :update, :destroy, :show] do
        resources :comments, only: [:index, :create]
      end
      resources :comments, only: [:update, :destory]
    end
  end
end
