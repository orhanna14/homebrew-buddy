# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid when built with factorybot' do
    @user1 = create(:user)
    expect(@user1).to be_valid
  end

  it 'is valid with valid attributes' do
    user = User.new(name: 'Olivia', email: 'olivia@aivilo.com',
                    password: 'password')
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
  it 'is not valid without a password' do
    user = User.new(password: nil)
    expect(user).to_not be_valid
  end
end
