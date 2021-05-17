Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/pro'
  get 'pages/public'
  get 'pages/lyon'
  get 'pages/nantes'
  get 'pages/paris'
  get 'pages/lille'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
