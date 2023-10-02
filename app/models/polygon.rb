class Polygon < ApplicationRecord
  validates :name, presence: true
  validates :coordinates, presence: true
end
