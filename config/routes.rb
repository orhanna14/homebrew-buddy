# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  resources :users, only: %i[new create] do
    resources :recipes, only: %i[new create index show]
  end
end
