class Game < ApplicationRecord
  has_many :wishlists
  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_many :users, through: :bookings
  has_many :users, through: :wishlist
  has_many_attached :photos
  GAME_TYPES = ["Card Game", "Board Game", "Sport Game", "Digital Game"]
  validates :game_type, inclusion: { in: GAME_TYPES }
  validates :name, :game_type, :content, :price, :user, presence: true
end
