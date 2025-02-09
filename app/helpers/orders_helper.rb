module OrdersHelper

  def product_quantity(product)
    @order.items.find_by(product:)&.quantity.to_i
  end
end
