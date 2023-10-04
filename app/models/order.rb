class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :user, optional: true
  geocoded_by :delivery_address
  after_validation :geocode, if: :will_save_change_to_delivery_address?
  TRANSPORT = ["Collect","Delivery"]
  validates :transport, inclusion: { in: TRANSPORT }

  def subtotal
    order_items.sum { |item| item.price }
  end

  def delivery_cost
  end

  def total
    subtotal + delivery_cost
  end
end
