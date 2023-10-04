class OrdersController < ApplicationController
  before_action :set_order, only: %i[show edit update destroy]

  def index
    @orders = Order.all
  end

  def show
  end

  def edit
  end

  def update
    if @order.update(order_params)
      flash[:success] = "Order updated successfully."
    else
      flash[:error] = "Failed to update order."
    end
    redirect_to panier_path
  end

  def destroy
    @order.destroy
    redirect_to orders_path, status: :see_other
  end

  private

  def set_order
    # @order = Order.find(params[:id])
    @order = current_order
  end

  def order_params
    params.require(:order).permit(:delivery_address, :transport)
  end
end
