class Booking < ApplicationRecord
  belongs_to :game
  belongs_to :user
  belongs_to :review
  validates :date_begin, presence: true
end
