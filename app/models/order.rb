class Order < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :products, through: :items
end
