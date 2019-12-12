Rails.application.routes.draw do
  root 'pages#landing'
  get 'privacy', to: 'pages#privacy'
  get 'tos', to: 'pages#tos'

  post 'requests/sales', to: 'zapier#send_request', source: "sales_call"
  post 'requests/demo', to: 'zapier#send_request', source: "demo"
  post 'requests/discovery', to: 'zapier#send_request', source: "discovery"

  mount FieldTest::Engine, at: "field_test"
end
