class Organism < ApplicationRecord
  has_many :certifications, dependent: :destroy
  has_many :user_associations, dependent: :destroy
  has_many :users, through: :user_associations
end
