# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Create a User', type: :feature do
  scenario 'New users can sign up with valid name and email' do
    user = User.new(name: 'Olivia', email: 'olivia@aivilo.com')

    visit '/'
    click_link 'Sign Up'
    expect(page).to have_content 'Sign Up Here'

    fill_in 'Name', with: user.name
    fill_in 'Email', with: user.email
    click_button 'Sign Up'

    expect(page).to have_text('You have successfully signed up!')
    
    assert user.save
  end
end
