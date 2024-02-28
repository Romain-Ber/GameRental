class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :wishlists, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :games, dependent: :destroy
  has_many :booked_games, through: :bookings, source: :game
  has_many :wishlisted_games, through: :wishlists, source: :game
  validates :username, :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
