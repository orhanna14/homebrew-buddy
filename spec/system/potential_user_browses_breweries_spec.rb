# frozen_string_literal: true

require "rails_helper"

RSpec.feature "A potential user searches breweries" do
  scenario "with valid parameters" do
    visit "/"
    fill_in "Brewery", with: "Anchor"
    click_button "Search"

    # TODO: Stub requests and write expectation here.

  end
end
