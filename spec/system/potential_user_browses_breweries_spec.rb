# frozen_string_literal: true

require "rails_helper"
require "spec_helper"

RSpec.feature "A potential user sends an external request to search breweries" do
  scenario "with valid parameters in the OpenBrewery DB Search feature" do
    brewery_name = "Anchor"
    search_service = double("BreweryClient")
    allow(search_service).to receive(:find_brewery).
      and_return(JSON.parse(fake_json_response))
    allow(BreweryClient).to receive(:new).and_return(search_service)

    visit "/"
    fill_in "brewery", with: brewery_name
    click_on "Search"

    expect(page).to have_content(brewery_name)
  end

  def fake_json_response
    "[{\"id\":314,\"name\":\"Anchor Brewing Co\",\"brewery_type\":\"large\",
    \"street\":\"1705 Mariposa St\",\"city\":\"San Francisco\",
    \"state\":\"California\",\"postal_code\":\"94107-2334\",
    \"country\":\"United States\",\"longitude\":\"-122.4011065\",
    \"latitude\":\"37.7630772\",\"phone\":\"4158638350\",
    \"website_url\":\"http://www.anchorbrewing.com\",
    \"updated_at\":\"2018-08-23T23:24:25.576Z\",\"tag_list\":[]}]"
  end
end
