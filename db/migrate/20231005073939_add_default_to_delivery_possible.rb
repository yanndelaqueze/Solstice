class AddDefaultToDeliveryPossible < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :delivery_possible, :boolean, default: false
  end
end
