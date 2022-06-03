class Certification < ApplicationRecord
  belongs_to :organism
  has_many :user_certifications, dependent: :destroy
  has_many :users, through: :user_certifications
end
