class PaymentsController < ApplicationController

  before_action :authenticate_user!

  def create
    @product = Product.find(params[:product_id])
    @user = current_user
    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        amount: (@product.price * 100).round(2).to_i,
        currency: "usd",
        source: token,
        description: params[:stripeEmail],
        receipt_email: params[:stripeEmail]
      )
      if charge.paid
        Order.create(
          product_id: @product.id,
          user_id: @user.id,
          total: @product.price
        )
      end
    rescue Stripe::CardError => e
      # The card has been declined
    end
    redirect_to product_path(@product)
  end
end
