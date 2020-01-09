# frozen_string_literal: true

Rails.application.routes.draw do
  root "home#index"

  get "/search" => "home#create", as: "search"

  resources :users, only: %i[new create] do
    resources :recipes, only: %i[new create index]
  end

  resources :recipes, only: %i[show]
end
