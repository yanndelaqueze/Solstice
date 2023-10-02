class AddDeliveryToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :delivery_address, :string
  end
end
