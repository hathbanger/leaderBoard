Rails.application.routes.draw do
  resources :athletes
  resources :events do
  	resources :runs
  end
  resources :runs
  root 'events#index'
end
