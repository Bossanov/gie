Rails.application.routes.draw do
  devise_for :users
  resources :cabinets
  root to: 'pages#home'
  get 'pages/pro'
  get 'pages/public'
  get 'pages/paris'
  get 'pages/mentionslegales'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
