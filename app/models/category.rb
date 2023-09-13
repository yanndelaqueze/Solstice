class Category < ApplicationRecord
  has_many :products, dependent: :destroy
  has_one_attached :photo
end
