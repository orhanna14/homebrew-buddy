# frozen_string_literal: true

class Recipe < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :ingredients
  validates_presence_of :instructions

  belongs_to :user
  has_many_attached :pictures
end
