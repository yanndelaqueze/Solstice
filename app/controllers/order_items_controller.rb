class OrderItemsController < ApplicationController
  before_action :set_order_item, only: [:update, :destroy]

  # Create a new order item
  def create
    @order = current_order
    @product = Product.find(params[:product_id])

    redirect_to cart_path
  end

  # Update the price of an order item
  def update
    if @order_item.update(order_item_params)
      flash[:success] = "Order item updated successfully."
    else
      flash[:error] = "Failed to update order item."
    end
    redirect_to cart_path
  end

  # Remove an order item from the cart
  def destroy
    @order_item.destroy
    flash[:success] = "Order item removed from your cart."
    redirect_to cart_path
  end

  private

  def set_order_item
    @order_item = OrderItem.find(params[:id])
  end

  def order_item_params
    params.require(:order_item).permit(:price)
  end
end
