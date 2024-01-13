class User < ApplicationRecord
  has_many :api_keys, as: :bearer
  has_secure_password
  has_many :posts
  has_one :user_profile
end
