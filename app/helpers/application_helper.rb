module ApplicationHelper
  def check_class_active(controller, action)
    if params[:controller] == controller && params[:action] == action
      return true
    else
      return false
    end
  end
end
