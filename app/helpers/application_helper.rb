module ApplicationHelper
  def current_order
    # Check if there's an existing order stored in the session
    if session[:current_order_id]
      @current_order ||= Order.find_by(id: session[:current_order_id])
    end
    # If no order exists in the session, create a new one
    if @current_order.nil?
      @current_order = Order.create
      session[:current_order_id] = @current_order.id
    end
    @current_order
  end
end
