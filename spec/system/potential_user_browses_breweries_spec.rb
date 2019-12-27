# frozen_string_literal: true

require "rails_helper"
require "spec_helper"

RSpec.feature "A potential user sends an external request to search breweries" do
  scenario "with valid parameters in the OpenBrewery DB Search feature" do
    brewery_name = "Anchor"
    uri = ("https://brianiswu-open-brewery-db-v1.p.rapidapi.com/breweries/search")

    visit "/"
    fill_in "brewery", with: brewery_name
    stub_request(:get, "https://brianiswu-open-brewery-db-v1.p.rapidapi.com/breweries/search").
      with(
        headers: {
          "Accept" => "*/*",
          "Host" => "brianiswu-open-brewery-db-v1.p.rapidapi.com:443",
          "User-Agent" => "excon/0.71.1",
        }).
        to_return(status: 200, body: "{ 'name': 'Anchor Steam Brewery'}")

    connection = Excon.new(uri)
    get_response = connection.get
    json = JSON.parse(get_response.data.to_json)

    expect(json["body"]).to include(brewery_name)
  end
end
