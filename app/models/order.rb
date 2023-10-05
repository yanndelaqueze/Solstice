class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :user, optional: true
  geocoded_by :delivery_address
  after_validation :geocode, if: :will_save_change_to_delivery_address?
  TRANSPORT = ["Collect", "Delivery"]
  validates :transport, inclusion: { in: TRANSPORT }
  validates :delivery_address, :delivery_instructions, presence: true, if: :delivery_transport?
  before_create :set_default_date
  before_create :subtotal
  before_create :delivery_cost

  def subtotal
    order_items ? order_items.sum { |item| item.price } : 0
  end

  def delivery_cost
    return 0
  end

  def total
    subtotal + delivery_cost
  end

  def delivery_transport?
    transport == "Delivery"
  end

  def in_delivery_area?
    @polygon = Polygon.last
    polygon_coordinates = JSON.parse(@polygon.coordinates)
    n = polygon_coordinates.length
    inside = false

    j = n - 1
    for i in 0...n
      xi, yi = polygon_coordinates[i]
      xj, yj = polygon_coordinates[j]

      intersect = ((yi > latitude) != (yj > latitude)) &&
                 (longitude < (xj - xi) * (latitude - yi) / (yj - yi) + xi)

      if intersect
        inside = !inside
      end

      j = i
    end

    return inside
  end


  private

  def set_default_date
    self.date ||= 2.days.from_now.to_date
  end
end
