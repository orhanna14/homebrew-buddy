# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Create a User', type: :feature do
  scenario 'New users can sign up' do
    visit '/'
    click_link 'Sign Up'
    expect(page).to have_content 'Sign Up Here'

    fill_in 'Name', with: 'MyFirstName'
    fill_in 'Email', with: 'MyEmailAddress'
    click_button 'Sign Up'

    expect(page).to have_text('You have successfully signed up!')
  end
end
