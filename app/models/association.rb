class Association < ApplicationRecord
  has_many :certifications
  has_many :users, through: :user_associations
  has_many :user_associations
end
