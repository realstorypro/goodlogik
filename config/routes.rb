Rails.application.routes.draw do
  root 'pages#landing'
  get 'features', to: 'pages#features'
  get 'agencies', to: 'pages#agencies'
  get 'about', to: 'pages#about'
  get 'tos', to: 'pages#tos'

  # landing page
  get 'lander', to: 'pages#landing'

  post 'demo/send_request', to: 'demo#send_request'
end
