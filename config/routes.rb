Rails.application.routes.draw do
  devise_for :users
  root to: "records#index"
  resources :records, only: [:index, :create, :show]
  resources :options, only: [:index, :create, :update, :destroy]
end
