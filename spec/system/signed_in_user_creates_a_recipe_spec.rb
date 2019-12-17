# frozen_string_literal: true

require 'rails_helper'
require 'support/features/clearance_helpers'

RSpec.feature 'A signed in user creates a recipe' do
  scenario 'with valid parameters, but no picture' do
    user = create(:user)
    recipe = FactoryBot.build(:recipe)

    sign_in_with user.email, user.password
    visit '/'
    click_link I18n.t('layouts.application.new_recipe')
    fill_in 'Title', with: recipe.title
    fill_in 'Ingredients', with: recipe.ingredients
    fill_in 'Instructions', with: recipe.instructions
    click_button 'Create'

    expect(page).to have_current_path('/')
  end

  scenario 'and includes a picture' do
    user = create(:user)
    recipe = FactoryBot.build(:recipe)

    sign_in_with user.email, user.password
    visit '/'
    click_link I18n.t('layouts.application.new_recipe')
    fill_in 'Title', with: recipe.title
    fill_in 'Ingredients', with: recipe.ingredients
    fill_in 'Instruction', with: recipe.instructions
    recipe.
      pictures.
      attach(io: File.open('public/apple-touch-icon.png'), filename: 'apple-touch-icon.png')
    click_button 'Create Recipe'

    expect(recipe.pictures.present?).to eq(true)
  end
end
