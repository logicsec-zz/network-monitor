NetworkMonitor::Application.routes.draw do
  devise_for :users
  root to: "dashboard#index"

  resources :devices
  resources :dashboard
  
  get '/run/:id' => 'ajax#run', as: 'run'
end
