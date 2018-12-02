Rails.application.routes.draw do
  root 'pages#home'
  get 'agencies', to: 'pages#agencies'
  get 'about', to: 'pages#about'

  post 'demo/send_request', to: 'demo#send_request'
end
