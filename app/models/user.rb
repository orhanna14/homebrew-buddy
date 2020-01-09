# frozen_string_literal: true

# This class creates a user
class User < ApplicationRecord
  include Clearance::User
  has_many :recipes, dependent: :destroy
  has_many :comments, through: :recipes
  has_one_attached :picture

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :password
  validates :picture, allow_nil: true,
                      content_type: %i[png jpg jpeg]

end
