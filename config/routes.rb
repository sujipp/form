Rails.application.routes.draw do
  resources :reports
  resources :events
  resources :users
  resources :pages
  root to:'pages#static'
end
