Rails.application.routes.draw do
  resources :test_events, only: [:index]
  root to: "test_events#index"
end
