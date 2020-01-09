# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :user
  has_many_attached :pictures
  has_many :comments, through: :user

  validates_presence_of :title
  validates_presence_of :ingredients
  validates_presence_of :instructions
  validates :pictures, allow_nil: true,
                       content_type: %i[png jpg jpeg]

end
