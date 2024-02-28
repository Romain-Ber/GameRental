class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :wishlists
  has_many :bookings
  has_many :games
  has_many :booked_games, through: :bookings, source: :game
  has_many :wishlisted_games, through: :wishlists, source: :game
  validates :username, :address, presence: true
end
