# frozen_string_literal: true

class CommentsController < ApplicationController
  attr_accessor :recipe_id

  def create
    @comment = Comment.create(comment_params)
    @user = current_user
    @comment.recipe = Recipe.find(params[:recipe_id])
    @comment.set_user!(current_user)
    if @comment.save
      flash[:success] = "Success!"
      # TODO: Move this to I18n
      redirect_to recipe_path(@comment.recipe)
    else
      flash[:alert] = I18n.t("recipes.create.alert")
      # TODO: Make a new I18n for this.
    end
  end

  private

  def comment_params
    params.
      require(:comment).
      permit(:body, :recipe_id, :user_id)
  end
end
