module ApplicationHelper

  def app_name
    "ikick.it"
  end

  def flash_class(type)
    case type
    when :alert
      "alert"
    when :error
        "error"
    when :notice
      "info"
    else
      ""
    end
  end

  #- include svg files inside of templates, views, etc.
  def inline_svg(file)
    file = File.open("app/assets/images/svg/#{file}.svg", "rb")
    raw file.read
  end

  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'active' : ''
    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end
  
end
