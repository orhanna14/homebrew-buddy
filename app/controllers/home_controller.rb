# frozen_string_literal: true

class HomeController < ApplicationController
  def index; end

  def search
    breweries =
      BrewerySearch.new(params[:brewery]).find_brewery(params[:brewery])
    unless breweries
      flash[:alert] = t(".not_found")
      return render action: :index
    end

    @brewery = breweries.first

  end
end
