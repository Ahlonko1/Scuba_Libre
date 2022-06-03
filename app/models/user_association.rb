class UserAssociation < ApplicationRecord
  belongs_to :organism, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
