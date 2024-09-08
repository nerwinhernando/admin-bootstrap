module ApplicationHelper
  def breadcrumb(*args)
    content_for :breadcrumbs do
      args.each_with_index do |arg, index|
        if index == args.size - 1
          concat content_tag(:li, arg, class: 'breadcrumb-item active', 'aria-current' => 'page')
        else
          concat content_tag(:li, link_to(arg[:text], arg[:path]), class: 'breadcrumb-item')
        end
      end
    end
  end
end
