class Product < ApplicationRecord
  belongs_to :category
  has_many :order_items
  has_one_attached :photo
end
