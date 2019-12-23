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
        "X-RapidAPI-Host" => Rails.application.credentials.x_rapid_api[:host],
        "X-RapidAPI-Key" => Rails.application.credentials.x_rapid_api[:key] ,
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
