Rails.application.routes.draw do
  root 'pages#home'
  get 'features', to: 'pages#features'
  get 'agencies', to: 'pages#agencies'
  get 'about', to: 'pages#about'

  post 'demo/send_request', to: 'demo#send_request'
end
