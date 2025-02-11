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

  enum :progress, {
    cart: 0,
    kitchen: 1,
    ready: 2,
    complete: 3
  }
end
