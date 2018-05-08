Rails.application.routes.draw do
  resources :topics
  root to: 'application#index'
end
