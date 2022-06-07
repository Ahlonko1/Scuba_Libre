class Message < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  scope :unread, -> { where(read: false) }

end
