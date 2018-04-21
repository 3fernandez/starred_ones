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

FactoryBot.define do
  factory :user do
    name "Jon Snow"
    sequence(:username) { |n| "hackersnow#{n}" }
    sequence(:email) { |n| "jonsnow_#{n}@starred.com" }
    avatar_url "https://avatars0.githubusercontent.com/u/3706669?v=4"
  end
end
