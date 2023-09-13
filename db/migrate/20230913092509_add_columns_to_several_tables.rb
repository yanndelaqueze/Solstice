class AddColumnsToSeveralTables < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :order, :integer
    add_column :order_items, :message, :text
    add_column :order_items, :color, :string
    add_column :order_items, :occasion, :string
  end
end
