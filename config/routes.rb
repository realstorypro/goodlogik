Rails.application.routes.draw do
  root 'pages#landing'
  get 'features', to: 'pages#features'
  get 'pricing', to: 'pages#pricing'
  get 'about', to: 'pages#about'

  get 'privacy', to: 'pages#privacy'
  get 'tos', to: 'pages#tos'

  post 'requests/send', to: 'zapier#send_request'
  mount FieldTest::Engine, at: "field_test"
end
