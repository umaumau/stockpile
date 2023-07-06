Rails.application.routes.draw do
  devise_for :users
  root to: "records#index"
  resources :records, only: [:index, :create]
  resources :options, only: [:edit, :update]
  resources :calendars, only: :index
end