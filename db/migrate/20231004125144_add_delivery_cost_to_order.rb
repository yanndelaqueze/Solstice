class AddDeliveryCostToOrder < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :delivery_cost, :float
  end
end
