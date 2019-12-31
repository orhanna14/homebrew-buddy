# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#index"

  get "/search" => "home#create", as: "search"

  resources :users, only: %i[new create] do
    resources :recipes, only: %i[new create index show]
  end
  resources :recipes, only: %i[new create index show] do
    resources :pictures, only: %i[new create]
  end
end
