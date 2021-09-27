Rails.application.routes.draw do
  resources :cabinets
  devise_for :users
  root to: 'pages#home'
  get 'pages/pro'
  get 'pages/public'
  get 'pages/paris'
  get 'pages/mentionslegales'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
