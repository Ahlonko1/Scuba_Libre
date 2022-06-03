class UserAssociation < ApplicationRecord
  belongs_to :organism
  belongs_to :user
end
