class AddDefaultNameToPolygon < ActiveRecord::Migration[7.0]
  def change
    change_column :polygons, :name, :string, default: "delivery_area"
  end
end
