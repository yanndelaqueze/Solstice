class OrdersController < ApplicationController
  before_action :set_order, only: %i[show edit update destroy]

  def index
    @status_options = Order.distinct.pluck(:status)
    @selected_status = params[:filter] && params[:filter][:status]

    if @selected_status.present?
      @orders = Order.where(status: @selected_status)
    else
      @orders = Order.all
    end
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
    redirect_to request.referer
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
    params.require(:order).permit(:delivery_address, :transport, :date, :delivery_instructions, :phone, :status)
  end
end
