require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = User.new(name: 'Olivia', email: 'olivia@aivilo.com')
    expect(user).to be_valid
  end
  it 'is not valid without a name' do
    user = User.new(name: nil)
    expect(user).to_not be_valid
  end
  it 'is not valid without an email' do
    user = User.new(email: nil)
    expect(user).to_not be_valid
  end
end
