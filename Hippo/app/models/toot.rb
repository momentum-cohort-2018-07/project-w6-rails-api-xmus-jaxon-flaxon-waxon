class Toot < ApplicationRecord
  belongs_to :user
  has_many :favorites
  validates :body, presence: true, length: {minimum: 2, maximum: 280 }
end
