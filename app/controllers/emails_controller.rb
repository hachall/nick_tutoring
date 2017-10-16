class EmailsController < ApplicationController

  def create
    @email = Email.new(emails_params)
    if @email.save
      respond_to do |format|
        # format.html in the very rare case the user has JS disabled in browser
        format.html { redirect_to root_path, notice: 'Success!' }
        format.js { flash[:notice] = 'Success!' } # this will render `app/views/messages/create.js.erb`
      end
    else
      respond_to do |format|
        # format.html in the very rare case the user has JS disabled in browser
        format.html { redirect_to root_path, alert: 'Failed!' }
        format.js # this will render `app/views/messages/create.js.erb`
      end
    end
  end


  def emails_params
    params.require(:email).permit(:email_address, :message)
  end
end
