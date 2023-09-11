class Order < ApplicationRecord
  has_many :order_items
  belongs_to :user, optional: true

  def total
    order_items.sum { |item| item.price }
  end
end
