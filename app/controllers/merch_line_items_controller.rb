class MerchLineItemsController < ApplicationController
  include CurrentCart
  before_action :set_merch_line_item, only: [:show, :edit, :update, :destroy]
  before_action :set_cart, only: [:create]

  # GET /merch_line_items
  # GET /merch_line_items.json
  def index
    @merch_line_items = MerchLineItem.all
  end

  # GET /merch_line_items/1
  # GET /merch_line_items/1.json
  def show
  end

  # GET /merch_line_items/new
  def new
    @merch_line_item = MerchLineItem.new
  end

  # GET /merch_line_items/1/edit
  def edit
  end

  # POST /merch_line_items
  # POST /merch_line_items.json
  def create
    merch = Merch.find(params[:merch_id])
    @merch_line_item = @cart.add_merch(merch)
    authorize @merch_line_item

    respond_to do |format|
      if @merch_line_item.save
        format.html { redirect_to @merch_line_item.cart, notice: 'Merch  was added to cart.' }
        format.json { render :show, status: :created, location: @merch_line_item }
      else
        format.html { render :new }
        format.json { render json: @merch_line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /merch_line_items/1
  # PATCH/PUT /merch_line_items/1.json
  def update
    respond_to do |format|
      if @merch_line_item.update(merch_line_item_params)
        format.html { redirect_to  @merch_line_item.cart, notice: 'Merch line item was successfully updated.' }
        format.json { render :show, status: :ok, location: @merch_line_item }
      else
        format.html { render :edit }
        format.json { render json: @merch_line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /merch_line_items/1
  # DELETE /merch_line_items/1.json
  def destroy
    @cart = Cart.find(session[:cart_id])
    @merch_line_item.destroy
    respond_to do |format|
      format.html { redirect_to @merch_line_item.cart, notice: 'Merch line item was successfully destroyed.' }
      format.json { head :no_content }
      format.js { render js: 'window.top.location.reload(true);' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_merch_line_item
      @merch_line_item = MerchLineItem.find(params[:id])
      authorize @merch_line_item
    end

    # Only allow a list of trusted parameters through.
    def merch_line_item_params
      params.require(:merch_line_item).permit(:merch_id, :cart_id, :quantity)
    end
end
