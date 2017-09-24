class EmailsController < ApplicationController
  def create
    @email = Email.new(emails_params)
    @email.save
    redirect_to '/'
  end


  def emails_params
    params.require(:email).permit(:email_address, :message)
  end
end
