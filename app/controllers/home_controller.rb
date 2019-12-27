# frozen_string_literal: true

class HomeController < ApplicationController
  def index; end

  def search
    breweries =
      BreweryClient.new(params[:brewery]).find_brewery(params[:brewery])
    unless breweries
      flash[:alert] = "Brewery not found"
      # TODO: Move this alert to I18n.
      return render action: :index
    end

    @brewery = breweries.first

    # TODO: Probably make this list all the breweries
  end
end
