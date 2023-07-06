Rails.application.routes.draw do
  get 'calendars/index'
  devise_for :users
  root to: "records#index"
  resources :records, only: [:index, :create]
  resources :options, only: [:edit, :update]
end