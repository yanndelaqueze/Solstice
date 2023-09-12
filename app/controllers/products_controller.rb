class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show]
  def show
    @product = Product.find(params[:id])
    @order_item = OrderItem.new
  end
end
