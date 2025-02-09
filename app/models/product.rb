class Product < ApplicationRecord
  belongs_to :category, counter_cache: true
  has_one_attached :image
  validates :image, :name, :price, :size, presence: true


  enum :availability, {
    out_of_stock: 0,
    in_stock: 1
  }

  scope :active_and_available, -> { in_stock.where(active: true) }

  after_update_commit -> { broadcast_replace_to "products" }
  after_destroy -> { broadcast_remove_to "products" }

  scope :displayable, -> { where(active: true).in_stock }
end
