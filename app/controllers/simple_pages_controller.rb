
class SimplePagesController < ApplicationController
  def index
  end

  def about
    redirect_to "/simple_pages/landing_page"
  end

  def contact
    def thank_you
      @name = params[:name]
      @email = params[:email]
      @message = params[:message]
      UserMailer.contact_form(@email, @name, @message).deliver_now
    end
  end

  def landing_page
    @products = Product.limit(3)
  end
end
