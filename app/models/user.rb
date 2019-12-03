# frozen_string_literal: true

# This class creates a user
class User < ApplicationRecord
  include Clearance::User
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :password
end
