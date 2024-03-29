# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for(
    :users,
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      passwords: 'users/passwords'
    }
  )

  get 'users' => 'pages#landing'

  devise_scope :user do
    get '/sign_in' => 'users/sessions#new'
    get '/sign_up' => 'users/registrations#new'
  end

  root 'pages#landing'
  get 'platform', to: 'pages#platform'
  get 'pricing', to: 'pages#pricing'
  get 'about', to: 'pages#about'
  get 'blockchain', to: 'pages#coin'

  resources :brands, only: %i[index show]
  resources :careers, only: %i[index show]

  get 'privacy', to: 'pages#privacy'
  get 'tos', to: 'pages#tos'

  post 'requests/send', to: 'zapier#send_request'
  post 'jobs/send', to: 'zapier#send_job_app'

  get 'exchange', to: 'exchange#index'

  mount FieldTest::Engine, at: 'field_test'
end
