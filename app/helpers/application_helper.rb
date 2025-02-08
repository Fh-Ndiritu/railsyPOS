module ApplicationHelper
  def active_class(controller, action)
    "active" if controller_name == controller && action_name == action
  end

  def currency
    @currency ||= "Kes"
  end
end
