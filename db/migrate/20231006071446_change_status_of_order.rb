class ChangeStatusOfOrder < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :status, :string, default: "En cours"
  end
end
