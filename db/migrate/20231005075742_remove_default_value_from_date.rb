class RemoveDefaultValueFromDate < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :date, :datetime, default: nil
  end
end
