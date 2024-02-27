class Booking < ApplicationRecord
  belongs_to :game
  belongs_to :user
  validates :date_begin, presence: true
end
