NetworkMonitor::Application.routes.draw do
  devise_for :users
  root :to => "application#index"
  resources :devices
  get '/run/:id' => 'ajax#run', as: 'run'
end
