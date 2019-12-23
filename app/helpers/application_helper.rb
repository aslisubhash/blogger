module ApplicationHelper

  def bootstrap_class_for_flash(flash_type)
    case flash_type
    when 'success'
      'alert-success'
    when 'error'
      'alert-danger'
    when 'alert'
      'alert-warning'
    when 'notice'
      'alert-info'
    else
      flash_type.to_s
    end
  end

  def text_with_badge(text, badge_value = nil)
    badge = content_tag :span, badge_value, class: 'badge'
    text = raw "#{text} #{badge}" if badge_value
    return text
  end
end
