# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  resources :users do
    resources :recipes, only: %i[new create index]
  end
end
