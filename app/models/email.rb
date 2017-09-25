class Email < ApplicationRecord
  validates :message, presence: true
  validates :email_address, presence: true
  validates_email_format_of :email_address
end
