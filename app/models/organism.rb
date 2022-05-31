class Organism < ApplicationRecord
  has_many :certifications
  has_many :user_associations
  has_many :users, through: :user_associations
end
