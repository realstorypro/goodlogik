Rails.application.routes.draw do
  get 'demo/request'
  root 'pages#home'
  get 'pages/home'

  post 'demo/send_request', to: 'demo#send_request'
end
