class AddDeliveryAndDateToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :transport, :string, default: 'collect'
    add_column :orders, :date, :datetime
    add_column :orders, :delivery_instructions, :text
    add_column :orders, :phone, :string
  end
end
