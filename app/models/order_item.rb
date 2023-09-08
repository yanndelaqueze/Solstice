class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  before_save :set_price

  def price
    self[:price]
  end

  private

  def set_price
    self[:price] = price
  end
end
