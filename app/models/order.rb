class Order < ApplicationRecord
  has_many :order_items
  belongs_to :user, optional: true
  enum status: { pending: 0, confirmed: 1 }

  def total
    order_items.sum { |item| item.price }
  end
end
