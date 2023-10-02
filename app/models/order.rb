class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :user, optional: true

  def subtotal
    order_items.sum { |item| item.price }
  end

  def delivery_cost
  end

  def total
    subtotal + delivery_cost
  end
end
