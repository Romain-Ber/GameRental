class Game < ApplicationRecord
  belongs_to :user #, as :owner
  has_many :users, through: :bookings
  has_many :reviews, through: :bookings, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  TYPES = ["Card Game", "Board Game", "Sport Game", "Digital Game"]
  validates :type, inclusion: { in: TYPES }
  validates :name, :type, :content, :price, :owner_id, presence: true
end
