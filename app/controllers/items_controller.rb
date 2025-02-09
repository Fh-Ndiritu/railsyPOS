class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]

  # GET /items or /items.json
  def index
    @items = Item.all
  end

  # GET /items/1 or /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items or /items.json
  def create
    @item = Item.find_or_initialize_by(item_params)

    respond_to do |format|
      if @item.persisted?
        update_quantity
      else
        unless @item.save
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
        end
      end
      format.html { redirect_to order_options_path(@item.order, @item.product.category.id), notice: "Item was successfully updated" }
      format.json { render :show, status: :ok, location: @item }
    end
  end

  def update_quantity
    case params[:commit]
    when "add"
      raise "This item is out of stock! " if @item.quantity == @item.product.stock
      @item.increment! :quantity
    when "subtract"
      if @item.quantity <= 1 # remove from cart
        @item.decrement! :quantity
      else
        @item.destroy
      end
    end
  end

  # PATCH/PUT /items/1 or /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: "Item was successfully updated." }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1 or /items/1.json
  def destroy
    @item.destroy!

    respond_to do |format|
      format.html { redirect_to items_path, status: :see_other, notice: "Item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.permit(:order_id, :product_id)
    end
end
