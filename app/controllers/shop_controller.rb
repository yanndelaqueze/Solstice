class ShopController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.all
    @order_item = current_order.order_items.new
  end
end
