class Order < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :products, through: :items

  def recompute_cost
    subtotal =  items.sum { |item| item.quantity * item.product.price }
    tax = subtotal.to_f * 0.16   # update to dynamic rates
    update(
      subtotal:,
      tax:,
      total:  subtotal + tax
    )
  end
end
