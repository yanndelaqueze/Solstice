class Order < ApplicationRecord
  has_many :order_items

  def total
    order_items.sum { |item| item.price }
  end
end
