# frozen_string_literal: true

FactoryBot.define do
  factory :recipe do
    user
    title { "MyString" }
    ingredients { "MyText" }
    instructions { "MyText" }
  end
end
