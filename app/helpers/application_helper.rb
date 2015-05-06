module ApplicationHelper
  def navicon(link_name, target: {}, icon_name: nil, active: false)
    li_to(active) do
      link_to(target) do
        icon_to(link_name, icon_name)
      end
    end
  end

  private

  def icon_to(name, icon_name)
    icon icon_name, content_tag(:span, name)
  end

  def li_to(active)
    if active
      content_tag(:li, yield, class: 'active')
    else
      content_tag(:li, yield)
    end
  end
end
