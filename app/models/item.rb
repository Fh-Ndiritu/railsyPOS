class Item < ApplicationRecord
  belongs_to :order
  belongs_to :product
  before_save :change_price

  after_save_commit :broadcast_updates, if: :saved_change_to_quantity?


  private

  def broadcast_updates
    broadcast_update_to "order_items"
  end

  def change_price
    self.price = quantity * product.price
  end
end
