class BrewerySearch < ApplicationService
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def request_api(url)
    response = Excon.get(
      url,
      headers: {
        "X-RapidAPI-Host" => Rails.application.credentials.x_rapid_api[:host],
        "X-RapidAPI-Key" => Rails.application.credentials.x_rapid_api[:key],
      },
    )

    return nil if response.status != 200

    JSON.parse(response.body)
  end

  def find_brewery
    request_api(
      "https://brianiswu-open-brewery-db-v1.p.rapidapi.com/breweries/search?query=#{name}",
    )
  end
end
