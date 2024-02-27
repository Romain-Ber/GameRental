class Game < ApplicationRecord
  has_many :wishlists
  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_many :users, through: :bookings
  has_many :users, through: :wishlist
  has_many_attached :photos
  TYPES = ["Card Game", "Board Game", "Sport Game", "Digital Game"]
  validates :type, inclusion: { in: TYPES }
  validates :name, :type, :content, :price, :owner_id, presence: true
end
