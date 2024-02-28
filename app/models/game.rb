class Game < ApplicationRecord
  has_many :wishlists
  has_many :bookings
  belongs_to :user
  has_many :booked_users, through: :bookings, source: :user
  has_many :wishlisted_users, through: :wishlist, source: :user
  # has_many_attached :photos
  GAME_TYPES = ["Card Game", "Board Game", "Sport Game", "Digital Game"]
  validates :game_type, inclusion: { in: GAME_TYPES }
  validates :name, :game_type, :content, :price, :user, presence: true
end
