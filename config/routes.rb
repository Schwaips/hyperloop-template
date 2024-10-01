require "sidekiq/web"
require 'sidekiq/cron/web'

Rails.application.routes.draw do
  mount Lookbook::Engine, at: "/lookbook" if Rails.env.development?

  devise_for :users, path: "auth", controllers: {
    confimations: 'auth/confirmations',
    passwords: 'auth/passwords',
    registrations: 'auth/registrations',
    sessions: 'auth/sessions',
    unlocks: 'auth/unlocks'
  }

  authenticated :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => "/sidekiq"
    ActiveAdmin.routes(self)
  end

  root to: 'pages#home'
  end
