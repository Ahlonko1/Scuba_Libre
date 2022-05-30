class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  has_many :offers, dependent: :destroy
  has_many :bookings
  has_many :user_associations
  has_many :associations, through: :user_associations
  has_many :user_associations
  has_many :certifications, through: :user_certifications
  has_one_attached :avatar

  # Renvoie les offres que j'ai reservées
  has_many :booked_offers, through: :bookings, source: :offer

  # renvoie les offres qu'on m'a reservées
  has_many :booking_requested, through: :bookings, source: :bookings
  validates :first_name, :last_name, presence: true
  has_one_attached :avatar

end
