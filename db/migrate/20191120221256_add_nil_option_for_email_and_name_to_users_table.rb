# frozen_string_literal: true

class AddNilOptionForEmailAndNameToUsersTable < ActiveRecord::Migration[6.0]
  def change
    change_column_null :users, :name, false
  end
end
