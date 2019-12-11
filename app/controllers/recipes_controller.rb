# frozen_string_literal: true

class RecipesController < ApplicationController
  before_action :require_login

  def index
    @user = User.find(params[:user_id])
    @recipes = @user.recipes
  end

  def new
    @recipe = Recipe.new
    @user = User.find(params[:user_id])
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = User.find(params[:user_id])
    if @recipe.save
      flash[:success] = t("success")
      redirect_to "/"
    else
      flash[:alert] = t("alert")
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :ingredients, :instructions)
  end
end
