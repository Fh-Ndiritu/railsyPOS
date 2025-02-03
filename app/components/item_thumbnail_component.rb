class ItemThumbnailComponent < ViewComponent::Base
  # Define the attributes that will be passed to the component
  attr_reader :image_url, :title, :count, :svg, :classes, :href, :data

  def initialize(image_url: nil, title:, count:, svg: nil, classes: "", href:, data: {})
    @image_url = image_url
    @title = title
    @count = count
    @svg = svg
    @classes = classes
    @href = href
    @data = data
  end
end
