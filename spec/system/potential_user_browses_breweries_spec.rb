# frozen_string_literal: true

require "rails_helper"
require "spec_helper"

RSpec.feature "A potential user sends an external request to search breweries" do
  scenario "with valid parameters in the OpenBrewery DB Search feature" do
    visit "/"
    fill_in "brewery", with: "Anchor"
    click_on "Search"

    name = find("name")
    expect(name).to have_content("Anchor Brewing Co")
    uri = ("https://brianiswu-open-brewery-db-v1.p.rapidapi.com/breweries/search")

    connection = Excon.new(uri)
    get_response = connection.get
    # TODO: So the response I need to stub right? This is a fixture?
    expect(get_response.data).to be_an_instance_of(Hash)

  end
end
