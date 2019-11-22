# frozen_string_literal: true

# Users Controller class
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    flash[:success] = I18n.t('signed_up')
    redirect_to '/'
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
