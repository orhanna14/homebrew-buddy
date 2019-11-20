# frozen_string_literal: true

# This class creates a user
class User < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :email
end
