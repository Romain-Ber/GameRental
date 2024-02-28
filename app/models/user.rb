class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :wishlists, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :games
  has_many :games, through: :bookings, as: :booked_games
  has_many :games, through: :wishlists, as: :wishlisted_games
  validates :username, :address, presence: true
end
