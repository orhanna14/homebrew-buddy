# frozen_string_literal: true

require 'rails_helper'
require 'support/features/clearance_helpers'

RSpec.feature 'Visitor signs up' do
  scenario 'by navigating to the page' do
    visit sign_in_path

    click_link I18n.t('sessions.form.sign_up')

    expect(current_path).to eq sign_up_path
  end

  scenario 'with valid email and password' do
    sign_up_with 'testname', 'valid@example.com', 'password'
    visit sign_in_path
    expect_user_to_be_signed_in
  end

  scenario 'with valid email, password, and picture' do
    user = FactoryBot.build(:user)
    user.
      picture.
      attach(io: File.open('public/apple-touch-icon.png'), filename: 'apple-touch-icon.png')

    visit sign_up_path
    click_button I18n.t('helpers.submit.user.create')

    expect(user.picture).to be_present
  end

  scenario 'tries with invalid email' do
    sign_up_with 'testname', 'invalid_email', 'password'

    expect_user_to_be_signed_out
  end

  scenario 'tries with blank password' do
    sign_up_with 'testname', 'valid@example.com', ''

    expect_user_to_be_signed_out
  end
end
