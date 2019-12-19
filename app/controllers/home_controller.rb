# frozen_string_literal: true

class HomeController < ApplicationController
  def index; end

  def search
    breweries = find_brewery(params[:brewery])

    unless breweries
     flash[:alert] = "Brewery not found"
     # TODO: Move this alert to I18n.
     return render action: :index
    end

    @brewery = breweries.first
    # TODO: Probably make this list all the breweries
  end

  private

  def request_api(url)
    response = Excon.get(
      url,
      headers: {
        "X-RapidAPI-Host" => "brianiswu-open-brewery-db-v1.p.rapidapi.com",
        "X-RapidAPI-Key" => "d06411ee49mshcbcdc80cdd60989p1f0313jsn80c1ad5cec44",
      # TODO: This key lives in credentials file. Refer to it from there.
      }
   )

    return nil if response.status != 200

    JSON.parse(response.body)
  end

  def find_brewery(name)
    request_api(
"https://brianiswu-open-brewery-db-v1.p.rapidapi.com/breweries/search?query=#{name}"
    )
  end
end
