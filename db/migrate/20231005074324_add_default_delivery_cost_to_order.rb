class AddDefaultDeliveryCostToOrder < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :delivery_cost, :float, default: 0
  end
end
