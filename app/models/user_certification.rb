class UserCertification < ApplicationRecord
  belongs_to :certification, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
