# frozen_string_literal: true

class OrderItemComponent < ViewComponent::Base
  # Define the attributes that will be passed to the component
  attr_reader :image_url, :title, :size, :classes, :price, :data

  def initialize(image_url: nil, title:, size:, classes: "", price:, data: {})
    @image_url = image_url
    @title = title
    @size = size
    @classes = classes
    @price = price
    @data = data
  end
end
