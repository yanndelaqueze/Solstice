class Order < ApplicationRecord
  has_many :order_items
  # before_save :set_subtotal

  def total
    order_items.sum { |item| item.price }
  end

  # private

  # def set_subtotal
  #   self[:subtotal] = subtotal
  # end
end
