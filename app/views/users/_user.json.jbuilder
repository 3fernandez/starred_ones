json.extract! user, :id, :name, :username, :email, :avatar_url, :created_at, :updated_at
json.url user_url(user, format: :json)
