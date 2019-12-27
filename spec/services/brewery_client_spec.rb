require "rails_helper"

RSpec.describe BreweryClient do
  describe ".find_brewery" do
    it "returns the first brewery with the name sent in the search parameter" do
      brewery_name = "Anchor"

      stub_request(:any, "https://brianiswu-open-brewery-db-v1.p.rapidapi.com/breweries/search?query=#{brewery_name}").
        with(
          headers: {
            "Host" => "brianiswu-open-brewery-db-v1.p.rapidapi.com:443",
            "X-Rapidapi-Host" =>
            "brianiswu-open-brewery-db-v1.p.rapidapi.com",
            "X-Rapidapi-Key" =>
            "d06411ee49mshcbcdc80cdd60989p1f0313jsn80c1ad5cec44",
          },
        ).to_return(status: 200,
                    body: "name: Anchor Steam Brewery",
                    headers: {})

      result = described_class.find_brewery(brewery_name)

      expect(result).to include(brewery_name)
      # TODO: Is this truly doing what I want/expect it to do?
    end
  end
end
