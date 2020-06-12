class SongShoppingCartsController < ApplicationController
  include CurrentCart
  before_action :set_song_shopping_cart, only: [:show, :edit, :upate, :destroy]
  before_action :set_shopping_cart, only: [:create]

  def index
    @song_shopping_carts = SongShoppingCart.all
  end

  def show
  end

  def new
    @song_shopping_cart = SongShoppingCart.new
  end

  def create
    @song = Song.find(params[:song_id])
    @song_shopping_cart = @shopping_cart.add_song(@song)

    respond_to do |format|
      if @song_shopping_cart.save
        format.html { redirect_to @song_shopping_cart.shopping_cart, notice: "Added to cart" }
        format.json { render :show, status: :created, location: @song_shopping_cart }
      else
        format.html { render :new }
        format.json { render json: @song_shopping_cart.errors, status: :unprocessible_entity }
      end
    end
  end

   def update
    respond_to do |format|
      if @song_shopping_cart.update(song_shopping_cart_params)
        format.html { redirect_to @song_shopping_cart, notice: 'Line item was successfully updated.' }
        format.json { render :show, status: :ok, location: @song_shopping_cart }
      else
        format.html { render :edit }
        format.json { render json: @song_shopping_cart.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def destroy
    @shopping_cart = ShoppingCart.find(session[:cart_id])
    @song_shopping_cart.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(@cart), notice: "item removed." }
      format.json { head :no_content }
    end
  end

  private

  def set_song_shopping_cart
    @song_shopping_cart = SongShoppingCart.find(params[:id])
  end

  def song_shopping_cart_params
    params.require(:song_shopping_cart).permit(:song_id)
  end

end
