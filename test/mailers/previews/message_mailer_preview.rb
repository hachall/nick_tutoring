class MessageMailerPreview < ActionMailer::Preview
  def enquiry
    email = Email.last
    MessageMailer.enquiry(email)
  end
end
