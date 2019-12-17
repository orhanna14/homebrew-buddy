# frozen_string_literal: true

# Users Controller class
class UsersController < Clearance::UsersController
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :picture)
  end
end
