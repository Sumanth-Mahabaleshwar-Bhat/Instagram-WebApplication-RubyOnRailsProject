json.extract! instagram_user_profile, :id, :avatar, :bio, :created_at, :updated_at
json.url instagram_user_profile_url(instagram_user_profile, format: :json)
