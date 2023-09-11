class ShopController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index]
  before_action :create_order, only: [:index]

  def index
    @categories = Category.all
    @products = Product.all
  end

  private

  def create_order
    if current_user
      @order = current_user.orders.find_or_create_by(status: 'pending')
    else
      @order = Order.find_or_create_by(status: 'pending')
    end

    session[:current_order_id] = @order.id
  end
end
