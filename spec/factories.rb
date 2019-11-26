# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { 'Jimmy' }
    email { 'jimmy@jimmyjohns.com' }
    password { 'jimmyjohns' }
  end
end
