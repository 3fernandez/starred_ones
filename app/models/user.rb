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

class User < ApplicationRecord
  validates :name, :avatar_url, presence: true
  validates :username, :email, presence: true, uniqueness: true

  def username=(username)
    write_attribute(:username, username.downcase) if username
  end
end
