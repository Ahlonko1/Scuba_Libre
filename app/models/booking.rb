class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :user
  has_many :messages, dependent: :destroy
  has_many :reviews, dependent: :destroy # should be has_one?

  after_create :set_price, :set_currency, :set_location

  scope :pending, -> { where(status: "pending") }
  scope :accepted, -> { where(status: "accepted") }
  scope :denied, -> { where(status: "denied") }
  scope :cancelled, -> { where(status: "cancelled") }

  validates :start_at, presence: true

  def set_price
    self.amount = offer.price
    save
  end

  def set_currency
    self.currency = offer.currency
    save
  end

  def set_location
    self.location = offer.user.location
    save
  end
end
