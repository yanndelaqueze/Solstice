class CartController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show]
  def show
    @order = Order.find_or_create_by(status: 'pending')
    @order_items = @order.order_items
  end
end
