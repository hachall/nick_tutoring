class MessageMailer < ApplicationMailer
  def enquiry(message)
    @message = message
    mail(to: 'n.lagnado@gmail.com', subject: 'TUTORING ENQUIRY')
  end
end
