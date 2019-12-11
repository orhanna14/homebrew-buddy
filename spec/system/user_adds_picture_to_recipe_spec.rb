# frozen_string_literal: true

require 'rails_helper'
require 'support/features/clearance_helpers'

RSpec.feature 'A signed in user adds a picture to their recipe' do
  scenario 'after the recipe has been created' do
    user = create(:user)
    recipe = create(:recipe)

    sign_in_with(user.email, user.password)
    visit user_recipes_path
    click_link I18n.t('.view_recipe')
    click_button I18n.t('.add_picture')

    expect(page).to have_current_path(edit_recipe_picture_path)
  end
end
