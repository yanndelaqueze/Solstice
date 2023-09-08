class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  before_save :set_price
  before_save :set_total

  def price
    if persisted?
      self[:price]
    else
      product.min_price
    end
  end

  def total
    return price
  end

  private

  def set_price
    self[:price] = price
  end

  def set_total
    self[:total] = total
  end
end
