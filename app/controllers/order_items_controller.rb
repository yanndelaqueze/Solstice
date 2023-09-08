class OrderItemsController < ApplicationController
  before_action :set_order

  def create
    @order = current_order
    @product = Product.find(params[:product_id])
    @order_item = @order.order_items.build(product: @product)

    if @order_item.save
      flash[:success] = "Product added to order successfully."
      redirect_to @product # Redirect back to the product show page
    else
      flash[:error] = "Failed to add product to order."
      redirect_to @product
    end
  end

  def update
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_params)
    @order_items = current_order.order_items
  end

  def destroy
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = current_order.order_items
  end

  private

  def order_item_params
    params.require(:order_item).permit(:price)
  end

  def order_params
    params.require(:order_item).permit(:product_id, :price)
  end

  def set_order
    @order = current_order
  end
end
