class Category < ApplicationRecord
  has_one_attached :image
  has_many :products, dependent: :destroy
  validates :name, presence: true
  validates :image, presence: true

  default_scope { order(:name) }

  enum :status, {
    inactive: 0,
    active: 1
  }

  scope :active_with_active_products, -> {
    active.joins(:products)
    .merge(Product.active_and_available)
    .distinct
  }


  after_create_commit -> { broadcast_append_to "categories" }
end
