NetworkMonitor::Application.routes.draw do
  devise_for :users

  

  root to: "dashboard#index"

  resources :devices
  resources :dashboard
  resources :users, only: [:show, :edit, :update]

  get '/run/:id' => 'ajax#run', as: 'run'
end
