class JoinTableItemsOrdersController < ApplicationController
  before_action :set_join_table_items_order, only: %i[ show edit update destroy ]

  # GET /join_table_items_orders or /join_table_items_orders.json
  def index
    @join_table_items_orders = JoinTableItemsOrder.all
  end

  # GET /join_table_items_orders/1 or /join_table_items_orders/1.json
  def show
  end

  # GET /join_table_items_orders/new
  def new
    @join_table_items_order = JoinTableItemsOrder.new
  end

  # GET /join_table_items_orders/1/edit
  def edit
  end

  # POST /join_table_items_orders or /join_table_items_orders.json
  def create
    @join_table_items_order = JoinTableItemsOrder.new(join_table_items_order_params)

    respond_to do |format|
      if @join_table_items_order.save
        format.html { redirect_to @join_table_items_order, notice: "Join table items order was successfully created." }
        format.json { render :show, status: :created, location: @join_table_items_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @join_table_items_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /join_table_items_orders/1 or /join_table_items_orders/1.json
  def update
    respond_to do |format|
      if @join_table_items_order.update(join_table_items_order_params)
        format.html { redirect_to @join_table_items_order, notice: "Join table items order was successfully updated." }
        format.json { render :show, status: :ok, location: @join_table_items_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @join_table_items_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_table_items_orders/1 or /join_table_items_orders/1.json
  def destroy
    @join_table_items_order.destroy
    respond_to do |format|
      format.html { redirect_to join_table_items_orders_url, notice: "Join table items order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join_table_items_order
      @join_table_items_order = JoinTableItemsOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def join_table_items_order_params
      params.fetch(:join_table_items_order, {})
    end
end
