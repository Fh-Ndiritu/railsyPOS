class Product < ApplicationRecord
  belongs_to :category, counter_cache: true
  has_one_attached :image
  validates :image, :name, :price, :size, presence: true


  enum :availability, {
    out_of_stock: 0,
    in_stock: 1
  }
end
