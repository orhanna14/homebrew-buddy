require "rails_helper"
require "spec_helper"

RSpec.feature "External request" do
  it "queries OpenBrewery DB Search feature" do
    uri = URI("https://brianiswu-open-brewery-db-v1.p.rapidapi.com/breweries/search")

    response = Net::HTTP.get(uri)

    expect(response).to be_an_instance_of(String)
  end
end
