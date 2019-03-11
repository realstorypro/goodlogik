Rails.application.routes.draw do
  root 'pages#landing'
  get 'lander', to: 'pages#landing'

  post 'demo/send_request', to: 'demo#send_request'
  mount FieldTest::Engine, at: "field_test"
end
