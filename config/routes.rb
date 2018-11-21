Rails.application.routes.draw do
  get 'demo/request'
  root 'pages#home'
  get 'agencies', to: 'pages#agencies'

  post 'demo/send_request', to: 'demo#send_request'
end
