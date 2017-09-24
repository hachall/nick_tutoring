class PagesController < ApplicationController
  def home
    @email = Email.new
  end
end
