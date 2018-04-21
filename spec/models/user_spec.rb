# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  username   :string
#  email      :string
#  avatar_url :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_users_on_username  (username) UNIQUE
#

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with a name, username, email and avatar_url' do
    user = FactoryBot.build(:user)

    expect(user).to be_valid
  end

  it 'is invalid without a name' do
    user = FactoryBot.build(:user, name: nil)
    user.valid?

    expect(user.errors[:name]).to include("can't be blank")
  end

  it 'is invalid without a username' do
    user = FactoryBot.build(:user, username: nil)
    user.valid?

    expect(user.errors[:username]).to include("can't be blank")
  end

  it 'is invalid without an email' do
    user = FactoryBot.build(:user, email: nil)
    user.valid?

    expect(user.errors[:email]).to include("can't be blank")
  end

  it 'is invalid without an avatar_url' do
    user = FactoryBot.build(:user, avatar_url: nil)
    user.valid?

    expect(user.errors[:avatar_url]).to include("can't be blank")
  end
end
