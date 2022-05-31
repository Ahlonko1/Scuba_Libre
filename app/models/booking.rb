class Booking < ApplicationRecord
  belongs_to :offer
  belongs_to :user

  after_create :set_price, :set_currency

  scope :pending, -> { where(status: "pending") }
  scope :accepted, -> { where(status: "accepted") }
  scope :denied, -> { where(status: "denied") }

  def set_price
    self.amount = offer.price
  end

  def set_currency
    self.currency = offer.currency
  end

end
