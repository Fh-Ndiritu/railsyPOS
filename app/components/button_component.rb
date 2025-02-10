# app/components/button_component.rb

class ButtonComponent < ViewComponent::Base
  # You can pass text, type, and any extra classes
  attr_reader :text, :type, :classes, :svg, :data, name:, value:

  def initialize(text: "Submit", type: "", classes: "", svg: nil, href: nil, data: {}, name: "", value: "")
    @text = text
    @type = type
    @classes = classes
    @svg = svg
    @href=href
    @data = data
    @name = name
    @value = value
  end
end
