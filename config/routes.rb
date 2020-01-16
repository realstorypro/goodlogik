Rails.application.routes.draw do
  root 'pages#landing'
  get 'brands', to: 'pages#brands'
  get 'platform', to: 'pages#platform'
  get 'pricing', to: 'pages#pricing'
  get 'about', to: 'pages#about'

  # get 'careers', to: 'careers#index'
  # get 'careers/:id', to: 'careers#show'
  resources :careers, only: [:index, :show]

  get 'privacy', to: 'pages#privacy'
  get 'tos', to: 'pages#tos'

  post 'requests/send', to: 'zapier#send_request'
  mount FieldTest::Engine, at: "field_test"
end
