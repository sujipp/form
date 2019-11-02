Rails.application.routes.draw do
  resources :users
  root to:'pages#static'
end
