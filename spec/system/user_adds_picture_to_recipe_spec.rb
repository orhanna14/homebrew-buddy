# frozen_string_literal: true

require 'rails_helper'
require 'support/features/clearance_helpers'

RSpec.feature 'A signed in user adds a picture to their recipe' do
  scenario 'after the recipe has been created' do
    user = create(:user)
    recipe = create(:recipe, user: user)

    sign_in_with(user.email, user.password)
    visit '/'
    click_link I18n.t('layouts.application.view_recipes')
    click_link I18n.t('recipes.index.show_recipe')
    click_button I18n.t('recipes.show.add_picture')

    expect(page).to have_current_path(recipe_pictures_path(recipe.id))
  end
end
