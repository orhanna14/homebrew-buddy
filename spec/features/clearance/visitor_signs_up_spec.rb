# frozen_string_literal: true

require "rails_helper"
require "support/features/clearance_helpers"

RSpec.feature "Visitor signs up" do
  scenario "by navigating to the page" do
    visit sign_in_path

    click_link I18n.t("sessions.form.sign_up")

    expect(current_path).to eq sign_up_path
  end

  scenario "with valid email and password" do
    sign_up_with "testname", "valid@example.com", "password"
    visit sign_in_path
    expect_user_to_be_signed_in
  end

  scenario "with valid email, password, and picture" do
    sign_up_with_picture "testname", "valid@example.com", "password", "spec/fixtures/apple-touch-icon.png"
    expect(page).to have_xpath("//img[contains(@src,'apple-touch-icon.png')]")
  end

  scenario "tries with invalid email" do
    sign_up_with "testname", "invalid_email", "password"

    expect_user_to_be_signed_out
  end

  scenario "tries with blank password" do
    sign_up_with "testname", "valid@example.com", ""

    expect_user_to_be_signed_out
  end
end
