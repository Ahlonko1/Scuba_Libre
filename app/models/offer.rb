class Offer < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings
  has_many_attached :photos
  validates :name, :category, :duration, :unit_duration, :price, :currency, :level, :briefing, :dives, :prerequisites,
            :included, presence: true
  validates :price, numericality: { only_integer: true }
  validates_associated :user
end
