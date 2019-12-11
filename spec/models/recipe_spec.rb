# frozen_string_literal: true

require "rails_helper"

RSpec.describe Recipe do
  it { should belong_to(:user) }
  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:ingredients) }
    it { should validate_presence_of(:instructions) }
  end
end
