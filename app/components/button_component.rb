# app/components/button_component.rb

class ButtonComponent < ViewComponent::Base
  # You can pass text, type, and any extra classes
  attr_reader :text, :type, :classes, :svg

  def initialize(text: "Submit", type: "", classes: "", svg: "", href: nil)
    @text = text
    @type = type
    @classes = classes
    @svg = svg
    @href=href
  end
end
