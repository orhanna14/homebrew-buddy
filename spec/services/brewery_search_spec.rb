require "rails_helper"

RSpec.describe BrewerySearch do
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
                    body: fake_json_response,
                    headers: {})

      result = described_class.find_brewery(brewery_name)

      expect(result).to include(brewery_name)
    end
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
