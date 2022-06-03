class UserCertification < ApplicationRecord
  belongs_to :certification
  belongs_to :user
end
