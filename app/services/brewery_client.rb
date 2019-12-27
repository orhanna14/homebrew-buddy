class BreweryClient
  def self.find_brewery(name)
    new(name).find_brewery(name)
  end
  # TODO: Ask Todd why I need this method above
  def initialize(name)
    @name = name
  end

  def request_api(url)
  response = Excon.get(
    url,
    headers: {
      "X-RapidAPI-Host" => Rails.application.credentials.x_rapid_api[:host],
      "X-RapidAPI-Key" => Rails.application.credentials.x_rapid_api[:key] ,
    }
  )

  return nil if response.status != 200

  JSON.parse(response.body.to_json)
  end

  def find_brewery(name)
    request_api(
      "https://brianiswu-open-brewery-db-v1.p.rapidapi.com/breweries/search?query=#{name}")
  end
end
