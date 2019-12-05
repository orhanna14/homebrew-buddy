# frozen_string_literal: true

FactoryBot.define do
  sequence :name do |n|
    "User#{n}"
  end

  sequence :email do |n|
    "user#{n}@example.com"
  end

  factory :user do
    name
    email
    password { 'password' }
  end
end
