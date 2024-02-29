class Game < ApplicationRecord
  has_many :wishlists, dependent: :destroy
  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_many :booked_users, through: :bookings, source: :user
  has_many :wishlisted_users, through: :wishlist, source: :user
  has_many_attached :photos
  GAME_TYPES = ["Card Game", "Board Game", "Sport Game", "Digital Game"]
  validates :game_type, inclusion: { in: GAME_TYPES }
  validates :name, :game_type, :content, :price, :user, presence: true
  after_validation :get_address_from_user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  private

  def get_address_from_user
    self.address = user.address
  end
end
