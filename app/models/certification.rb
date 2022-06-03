class Certification < ApplicationRecord
  belongs_to :organism, dependent: :destroy
  has_many :user_certifications
  has_many :users, through: :user_certifications
end
