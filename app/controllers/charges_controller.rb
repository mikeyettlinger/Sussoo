class ChargesController < ApplicationController
  # before_action :authorize
  skip_after_action :verify_authorized, only: [:create]


  def new
  end

  def create
  # Amount in cents
    @amount = 500
    # authorize @amount

    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })

    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'What is in the cart',
      currency: 'gbp',
    })

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private

  # def authorize
  #   authorize @charges
  # end

end
