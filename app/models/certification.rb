class Certification < ApplicationRecord
  belongs_to :association
  has_many :user_certifications
  has_many :users, through: :user_certifications
end
