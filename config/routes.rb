Rails.application.routes.draw do
  resources :runs
  resources :athletes
  resources :events
  root 'events#index'
end
