class Email < ApplicationRecord
  after_create :send_enquiry

  validates :message, presence: true, length: { minimum: 15 }
  validates :email_address, presence: true
  validates :email_address, email_format: { message: "does not look like a valid email"}


  private

  def send_enquiry
    MessageMailer.enquiry(self).deliver_now
  end
end
