class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include PgSearch::Model


  has_many :offers, dependent: :destroy
  has_many :bookings
  has_many :user_associations
  has_many :organisms, through: :user_associations
  has_many :certifications, through: :user_certifications
  has_one_attached :avatar

  pg_search_scope :global_search,
  against: [ :first_name, :last_name, :location ],
  associated_against: {
    offers: [ :name, :category, :level ]
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

  def pro_profile_complete?
    return false
  #   return true unless pro?

  #   phone_number.present? && location.present?
  end
end
