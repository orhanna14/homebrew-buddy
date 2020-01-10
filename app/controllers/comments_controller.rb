# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :require_login

  def create
    @comment = Comment.create(body: params[:body], user_id: current_user.id, recipe_id: params[:recipe_id] )
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
