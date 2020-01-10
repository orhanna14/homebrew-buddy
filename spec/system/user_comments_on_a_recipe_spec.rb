# frozen_string_literal: true

require "rails_helper"
require "support/features/clearance_helpers"

RSpec.feature "A signed in user comments on a recipe" do
  scenario "that is not their own" do
    user = create(:user)
    recipe = create(:recipe, user: user)
    user_commenting = create(:user)
    comment = Comment.new(
      body: "What an awesome recipe!",
      user_id: user_commenting.id,
      recipe_id: recipe.id,
    )

    sign_in_with user_commenting.email, user_commenting.password
    visit root_path
    click_link(recipe.title)
    fill_in "comment", with: comment.body
    click_button "Submit comment"

    expect(page).to have_current_path(recipe_path(recipe))
  end
end
