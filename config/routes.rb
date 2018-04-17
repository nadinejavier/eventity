Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  root to: 'events#index'
  resources :users
  resources :events
  resources :user_events
end
