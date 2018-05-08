Rails.application.routes.draw do
  resources :topics, only: [:new, :create, :show]
  root to: 'application#index'
end
