class Category < ApplicationRecord
  has_one_attached :image
  has_many :products, dependent: :nullify
  validates :name, presence: true
  validates :image, presence: true

  default_scope { order(:name)}

  enum :status, {
    inactive: 0,
    active: 1
  }


  after_create_commit -> { broadcast_append_to "categories" }
end
