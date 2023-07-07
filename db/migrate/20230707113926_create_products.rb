class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name,           default: ""
      t.string :description,    default: ""
      t.float :min_price,       default: 0
      t.boolean :available,     default: true
      t.boolean :featured,      default: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
