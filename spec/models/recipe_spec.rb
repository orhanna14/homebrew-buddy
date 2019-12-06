# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Recipe do
  it { should belong_to(:user) }
end
