# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Create a User', type: :feature do
  scenario 'New users can sign up with valid name and email' do
    user = User.new(name: 'Olivia', email: 'olivia@aivilo.com', password: 'password')
    visit '/'
    click_link 'Sign Up'
    fill_in 'Name', with: user.name
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign Up'
    expect(user.save).to eq true
  end
end
