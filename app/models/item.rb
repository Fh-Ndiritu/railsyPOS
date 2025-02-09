class Item < ApplicationRecord
  belongs_to :order
  belongs_to :product
  before_save :change_price


  def increment_quantity
    return false if quantity >= product.stock

    increment!(:quantity)
    true
  end

  def decrement_quantity
      decrement!(:quantity)
  end

  private

  def change_price
    self.price = quantity * product.price
  end
end
