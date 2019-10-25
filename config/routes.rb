Rails.application.routes.draw do
  root 'pages#landing'
  get 'lander', to: 'pages#landing'

  post 'sales/send_request', to: 'sales#send_request'
  post 'discovery/send_request', to: 'discovery#send_request'
  mount FieldTest::Engine, at: "field_test"
end
