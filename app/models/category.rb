class Category < ApplicationRecord
  has_one_attached :image
  has_many :products, dependent: :nullify

  enum :status, {
    inactive: 0,
    active: 1
  }
end
