# frozen_string_literal: true

# Home controller class
class HomeController < ApplicationController
  def index
    @user = current_user
  end
end
