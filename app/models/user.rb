class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include PgSearch::Model

  has_many :offers, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :user_associations, dependent: :destroy
  has_many :organisms, through: :user_associations
  has_many :certifications, through: :user_certifications
  has_many :offer_bookings, through: :offers, source: :bookings
  has_many :pro_reviews, through: :bookings, source: :reviews
  has_one_attached :avatar

  pg_search_scope :global_search,
                  against: %i[first_name last_name location],
                  associated_against: {
                    offers: %i[name category level]
                  },
                  using: {
                    tsearch: { prefix: true }
                  }

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  # Renvoie les offres que j'ai reservées
  has_many :booked_offers, through: :bookings, source: :offer

  # renvoie les offres qu'on m'a reservées
  has_many :booking_requested, through: :offers, source: :bookings
  validates :first_name, :last_name, presence: true
  has_one_attached :avatar

  scope :pro, -> { where(pro: true) }

  def all_bookings
    Booking.where(id: all_booking_ids)
  end

  def all_booking_ids
    booking_requested_ids + booking_ids
  end

  def pro_profile_complete?
    return false
    #   return true unless pro?

    #   phone_number.present? && location.present?
  end

  def gotmail?
    Message.
      where(booking_id: all_booking_ids, read: false).
      where.not(user: self).
      any?
  end

  def how_many_mail
    Message.
      where(booking_id: all_booking_ids, read: false).
      where.not(user: self).count
  end

  def pro_average_rating
    return -1 unless pro?

    pro_reviews.sum(&:rating).fdiv(pro_reviews.count).round(1)
  end
end
