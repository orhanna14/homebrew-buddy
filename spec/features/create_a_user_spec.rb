require 'rails_helper'

RSpec.feature 'Create a User' do
  scenario 'They click a button on the homepage that lets them sign up' do
    visit  '/'
    click_button 'Sign Up'
  end
end
