# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @user = current_user
    @recipes = Recipe.all
  end

  def create
    breweries =
      BrewerySearch.new(params[:brewery]).find_brewery
    if breweries != []
      @brewery = breweries.first
    else
      redirect_to "/", alert: t(".not_found")
    end
  end
end
