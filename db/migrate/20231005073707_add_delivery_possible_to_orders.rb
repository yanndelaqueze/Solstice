class AddDeliveryPossibleToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :delivery_possible, :boolean
  end
end
