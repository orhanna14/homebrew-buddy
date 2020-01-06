# frozen_string_literal: true

require "rails_helper"

RSpec.feature "A potential user browses recipes created by others" do
  scenario "by default, when visiting the homepage" do
    user = create(:user)
    recipes = create_list(:recipe, 5, user: user)

    visit root_path

    expect(page).to have_content(recipes[0].id)
    expect(page).to have_content(recipes[1].id)
    expect(page).to have_content(recipes[2].id)
    expect(page).to have_content(recipes[3].id)
    expect(page).to have_content(recipes[4].id)
  end
end
