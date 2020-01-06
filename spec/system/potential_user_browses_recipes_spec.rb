# frozen_string_literal: true

require "rails_helper"

RSpec.feature "A potential user browses recipes created by others" do
  scenario "by default, when visiting the homepage" do
    user = create(:user)
    recipes = create_list(:recipe, 5, user: user)

    visit root_path

    recipes.each do |recipe|
      expect(page).to have_content(recipe.title)
    end
  end
end
