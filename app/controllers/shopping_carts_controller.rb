class ShoppingCartsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
  before_action :set_shopping_cart, only: [:show, :edit, :upate, :destroy]

  def index
    @shopping_carts = ShoppingCart.all
  end

  def show
  end

  def new
    @shopping_cart = ShoppingCart.new
  end

  def edit
  end

  def destroy
    @shopping_cart.destroy if @shopping_cart.id == session[:cart_id]
    session[:cart_id] = nil
  end

  private

  def set_shopping_cart
    @shopping_cart = ShoppingCart.find(params[:id])
  end

  def invalid_cart
    logger.error "Attempt to access invalid card #{params[:id]}"
    redirect_to root_path, notice: "That cart doesn't exist"
  end
end
