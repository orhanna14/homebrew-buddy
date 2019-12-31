# frozen_string_literal: true

require "rails_helper"
require "support/features/clearance_helpers"

RSpec.feature "A signed in user creates a recipe" do
  scenario "with valid parameters" do
    user = create(:user)
    recipe = FactoryBot.build(:recipe)

    sign_in_with user.email, user.password
    visit "/"
    click_link I18n.t("layouts.application.new_recipe")
    fill_in "Title", with: recipe.title
    fill_in "Ingredients", with: recipe.ingredients
    fill_in "Instructions", with: recipe.instructions
    click_button "Create"

    expect(page).to have_current_path("/")
  end

  scenario "and includes an optional picture" do
    user = create(:user)
    recipe = FactoryBot.build(:recipe)

    sign_in_with user.email, user.password
    visit "/"
    click_link I18n.t("layouts.application.new_recipe")
    fill_in "Title", with: recipe.title
    fill_in "Ingredients", with: recipe.ingredients
    fill_in "Instruction", with: recipe.instructions

    attach_file("recipe[pictures][]", "spec/fixtures/apple-touch-icon.png")
    click_button "Create Recipe"
    click_link "View all Recipes"
    click_link "Show recipe"
    expect(page).to have_xpath("//img[contains(@src,'apple-touch-icon.png')]")
  end
end
