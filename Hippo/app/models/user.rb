class User < ApplicationRecord
  has_secure_token :api_token
  has_secure_password
  has_many :toots, dependent: :destroy
  acts_as_followable
  acts_as_follower
end
