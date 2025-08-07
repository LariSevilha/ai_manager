Rails.application.routes.draw do
  get 'search/projects'
  get 'search/tasks'
  get 'search/users'
  get 'notifications/index'
  get 'notifications/mark_as_read'
  namespace :api do
    namespace :v1 do
      get 'dashboard/stats'
      get 'dashboard/metrics'
      get 'users/show'
      get 'users/update'
      get 'tasks/index'
      get 'tasks/show'
      get 'tasks/create'
      get 'tasks/update'
      get 'tasks/destroy'
      get 'projects/index'
      get 'projects/show'
      get 'projects/create'
      get 'projects/update'
      get 'projects/destroy'
    end
  end
  get 'tasks/index'
  get 'tasks/show'
  get 'tasks/new'
  get 'tasks/create'
  get 'tasks/edit'
  get 'tasks/update'
  get 'tasks/destroy'
  get 'tasks/move'
  get 'projects/index'
  get 'projects/show'
  get 'projects/new'
  get 'projects/create'
  get 'projects/edit'
  get 'projects/update'
  get 'projects/destroy'
  get 'home/index'
  get 'dashboards/show'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
