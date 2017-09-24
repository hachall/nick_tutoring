class Email < ApplicationRecord
  validates :message, presence: true
  validates_email_format_of :email_address, :message => 'Must be a valid email address'
end
