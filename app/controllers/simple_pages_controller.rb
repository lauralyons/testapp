
class SimplePagesController < ApplicationController
  def index
  end

  def about
    redirect_to "/simple_pages/landing_page"
  end

  def contact
  end

  def landing_page
    @products = Product.limit(3)
  end
end
