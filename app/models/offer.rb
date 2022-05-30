class Offer < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :name, :category, :duration, :unit_duration, :price, :currency, :level, :briefing, presence: true
  validates :price, numericality: { only_integer: true }
  validates_associated :user
end
