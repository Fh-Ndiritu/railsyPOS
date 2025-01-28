class Category < ApplicationRecord
  has_one_attached :image
  has_many :products, dependent: :nullify
end
