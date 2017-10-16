class MessageMailer < ApplicationMailer
  def enquiry(message)
    @message = message
    mail(to: 'hachall@hotmail.com', subject: 'TUTORING ENQUIRY')
  end
end
