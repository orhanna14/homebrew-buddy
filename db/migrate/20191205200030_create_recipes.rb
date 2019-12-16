# frozen_string_literal: true

class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :ingredients
      t.text :instructions
      t.belongs_to :user, null: false
      t.timestamps
    end
  end
end
