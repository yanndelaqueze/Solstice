class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name,         default: ""
      t.text :description,    default: ""
      t.integer :order,       default: 1
      t.boolean :display,     default: true

      t.timestamps
    end
  end
end
