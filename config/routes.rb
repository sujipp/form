Rails.application.routes.draw do
  resources :reports
  resources :events
  resources :users
  root to:'pages#static'
end
