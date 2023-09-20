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
  end

  def destroy
    @order.destroy
    redirect_to orders_path, status: :see_other
  end

  def set_order
    @order = Order.find(params[:id])
  end

end
